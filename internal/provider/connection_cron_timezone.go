package provider

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"strings"
	"sync"
	"time"

	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk"
	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

type providerRuntimeConfig struct {
	ConfigAPIRoot string
}

var providerRuntimeConfigs sync.Map

func storeProviderRuntimeConfig(client *sdk.SDK, config providerRuntimeConfig) {
	providerRuntimeConfigs.Store(client, config)
}

func getProviderRuntimeConfig(client *sdk.SDK) providerRuntimeConfig {
	if config, ok := providerRuntimeConfigs.Load(client); ok {
		return config.(providerRuntimeConfig)
	}
	return providerRuntimeConfig{}
}

func deriveConfigAPIRoot(publicAPIRoot string) string {
	publicAPIRoot = strings.TrimRight(publicAPIRoot, "/")
	if strings.Contains(publicAPIRoot, "api.airbyte.com") {
		return "https://cloud.airbyte.com/api"
	}
	if strings.HasSuffix(publicAPIRoot, "/api/public/v1") {
		return strings.TrimSuffix(publicAPIRoot, "/public/v1")
	}
	if strings.HasSuffix(publicAPIRoot, "/api/v1") {
		return strings.TrimSuffix(publicAPIRoot, "/v1")
	}
	return strings.TrimSuffix(publicAPIRoot, "/v1")
}

func stripCronTimeZone(cronExpression string) (string, string) {
	fields := strings.Fields(cronExpression)
	if len(fields) <= 6 {
		return cronExpression, ""
	}

	last := fields[len(fields)-1]
	if _, err := time.LoadLocation(last); err != nil {
		return cronExpression, ""
	}

	return strings.Join(fields[:len(fields)-1], " "), last
}

func stringPointerValue(value string) *string {
	if value == "" {
		return nil
	}
	return &value
}

func cronScheduleParts(schedule *tfTypes.AirbyteAPIConnectionSchedule) (string, string, diag.Diagnostics) {
	var diags diag.Diagnostics
	if schedule == nil || schedule.ScheduleType.ValueString() != "cron" {
		return "", "", diags
	}

	cronExpression := schedule.CronExpression.ValueString()
	if cronExpression == "" {
		return "", "", diags
	}

	cleanCronExpression, suffixTimeZone := stripCronTimeZone(cronExpression)
	cronTimeZone := suffixTimeZone
	if !schedule.CronTimeZone.IsUnknown() && !schedule.CronTimeZone.IsNull() && schedule.CronTimeZone.ValueString() != "" {
		cronTimeZone = schedule.CronTimeZone.ValueString()
	}
	if cronTimeZone == "" {
		return cleanCronExpression, "", diags
	}

	if _, err := time.LoadLocation(cronTimeZone); err != nil {
		diags.AddError("Invalid cron time zone", fmt.Sprintf("cron_time_zone must be a valid IANA time zone: %s", err))
		return "", "", diags
	}

	return cleanCronExpression, cronTimeZone, diags
}

func cronExpressionForPublicAPI(schedule *tfTypes.AirbyteAPIConnectionSchedule) *string {
	if schedule == nil || schedule.CronExpression.IsUnknown() || schedule.CronExpression.IsNull() {
		return nil
	}
	cronExpression, _ := stripCronTimeZone(schedule.CronExpression.ValueString())
	return stringPointerValue(cronExpression)
}

func applyCronScheduleResponse(schedule *tfTypes.AirbyteAPIConnectionSchedule, cronExpression *string, cronTimeZone *string) {
	if schedule == nil {
		return
	}

	if cronExpression == nil {
		schedule.CronExpression = types.StringNull()
		schedule.CronTimeZone = types.StringPointerValue(cronTimeZone)
		return
	}

	cleanCronExpression, suffixTimeZone := stripCronTimeZone(*cronExpression)
	if cronTimeZone == nil && suffixTimeZone != "" {
		cronTimeZone = &suffixTimeZone
	}

	schedule.CronExpression = types.StringValue(cleanCronExpression)
	schedule.CronTimeZone = types.StringPointerValue(cronTimeZone)
}

func applyCronScheduleDataSourceResponse(schedule *tfTypes.ConnectionScheduleResponse, cronExpression *string, cronTimeZone *string) {
	if schedule == nil {
		return
	}

	if cronExpression == nil {
		schedule.CronExpression = types.StringNull()
		schedule.CronTimeZone = types.StringPointerValue(cronTimeZone)
		return
	}

	cleanCronExpression, suffixTimeZone := stripCronTimeZone(*cronExpression)
	if cronTimeZone == nil && suffixTimeZone != "" {
		cronTimeZone = &suffixTimeZone
	}

	schedule.CronExpression = types.StringValue(cleanCronExpression)
	schedule.CronTimeZone = types.StringPointerValue(cronTimeZone)
}

type configConnectionScheduleData struct {
	Cron *configConnectionScheduleDataCron `json:"cron,omitempty"`
}

type configConnectionScheduleDataCron struct {
	CronExpression string `json:"cronExpression"`
	CronTimeZone   string `json:"cronTimeZone"`
}

type configConnectionRead struct {
	ScheduleType string                        `json:"scheduleType"`
	ScheduleData *configConnectionScheduleData `json:"scheduleData,omitempty"`
}

func (r *ConnectionResource) applyCronTimeZone(ctx context.Context, data *ConnectionResourceModel, connectionID string, rawResponse *http.Response) diag.Diagnostics {
	var diags diag.Diagnostics

	cronExpression, cronTimeZone, scheduleDiags := cronScheduleParts(data.Schedule)
	diags.Append(scheduleDiags...)
	if diags.HasError() || cronExpression == "" || cronTimeZone == "" || cronTimeZone == "UTC" {
		return diags
	}

	authHeader := authorizationHeader(rawResponse)
	if authHeader == "" {
		diags.AddError("Unable to apply cron time zone", "The Airbyte API response did not include an Authorization header to reuse for the internal config API request.")
		return diags
	}

	body := map[string]any{
		"connectionId": connectionID,
		"scheduleType": "cron",
		"scheduleData": configConnectionScheduleData{
			Cron: &configConnectionScheduleDataCron{
				CronExpression: cronExpression,
				CronTimeZone:   cronTimeZone,
			},
		},
	}

	var out configConnectionRead
	if err := r.postConfigAPI(ctx, "/v1/connections/update", authHeader, body, &out); err != nil {
		diags.AddError("Unable to apply cron time zone", err.Error())
		return diags
	}

	if out.ScheduleData != nil && out.ScheduleData.Cron != nil {
		applyCronScheduleResponse(data.Schedule, &out.ScheduleData.Cron.CronExpression, &out.ScheduleData.Cron.CronTimeZone)
	}

	return diags
}

func (r *ConnectionResource) refreshCronTimeZone(ctx context.Context, data *ConnectionResourceModel, rawResponse *http.Response) diag.Diagnostics {
	var diags diag.Diagnostics
	if data == nil || data.ConnectionID.IsNull() || data.ConnectionID.IsUnknown() {
		return diags
	}

	authHeader := authorizationHeader(rawResponse)
	if authHeader == "" {
		return diags
	}

	body := map[string]string{"connectionId": data.ConnectionID.ValueString()}

	var out configConnectionRead
	if err := r.postConfigAPI(ctx, "/v1/connections/get", authHeader, body, &out); err != nil {
		return diags
	}

	if out.ScheduleType != "cron" || out.ScheduleData == nil || out.ScheduleData.Cron == nil {
		return diags
	}

	if data.Schedule == nil {
		data.Schedule = &tfTypes.AirbyteAPIConnectionSchedule{}
	}
	applyCronScheduleResponse(data.Schedule, &out.ScheduleData.Cron.CronExpression, &out.ScheduleData.Cron.CronTimeZone)

	return diags
}

func authorizationHeader(response *http.Response) string {
	if response == nil || response.Request == nil {
		return ""
	}
	return response.Request.Header.Get("Authorization")
}

func (r *ConnectionResource) postConfigAPI(ctx context.Context, path string, authHeader string, body any, out any) error {
	config := getProviderRuntimeConfig(r.client)
	if config.ConfigAPIRoot == "" {
		return fmt.Errorf("config_api_root is not configured")
	}

	endpoint, err := url.JoinPath(config.ConfigAPIRoot, path)
	if err != nil {
		return err
	}

	payload, err := json.Marshal(body)
	if err != nil {
		return err
	}

	request, err := http.NewRequestWithContext(ctx, http.MethodPost, endpoint, bytes.NewReader(payload))
	if err != nil {
		return err
	}
	request.Header.Set("Accept", "application/json")
	request.Header.Set("Content-Type", "application/json")
	request.Header.Set("Authorization", authHeader)

	response, err := http.DefaultClient.Do(request)
	if err != nil {
		return err
	}
	defer response.Body.Close()

	responseBody, err := io.ReadAll(response.Body)
	if err != nil {
		return err
	}

	if response.StatusCode < 200 || response.StatusCode >= 300 {
		return fmt.Errorf("internal config API returned status %d: %s", response.StatusCode, string(responseBody))
	}

	if out == nil || len(responseBody) == 0 {
		return nil
	}
	return json.Unmarshal(responseBody, out)
}
