#!/usr/bin/env python3
"""Patch generated connection/provider files for cron time zone support.

The public Connections API still accepts only `schedule.cronExpression` and
hard-codes UTC in the server-side public API mapper. The internal config API
supports `scheduleData.cron.cronTimeZone`, so the generated provider needs a
small post-generation patch to:

- expose `config_api_root` on the provider
- expose `schedule.cron_time_zone` on connection resources/data sources
- strip any legacy time zone suffix from public API cron expressions
- call hand-written helper functions that apply/read the time zone through the
  internal config API

Usage:
    python3 scripts/patch_connection_cron_timezone.py
"""

from __future__ import annotations

import sys
from pathlib import Path

PROVIDER_DIR = Path("internal/provider")
TYPES_DIR = PROVIDER_DIR / "types"


def replace_once(content: str, old: str, new: str, path: Path) -> str:
    count = content.count(old)
    if count != 1:
        print(f"ERROR: Expected exactly 1 occurrence in {path}: {old!r}; found {count}", file=sys.stderr)
        sys.exit(1)
    return content.replace(old, new, 1)


def insert_after_once(content: str, anchor: str, insertion: str, path: Path) -> str:
    count = content.count(anchor)
    if count != 1:
        print(f"ERROR: Expected exactly 1 anchor in {path}: {anchor!r}; found {count}", file=sys.stderr)
        sys.exit(1)
    idx = content.find(anchor) + len(anchor)
    return content[:idx] + insertion + content[idx:]


def patch_file(path: Path, patcher) -> bool:
    if not path.exists():
        print(f"ERROR: {path} does not exist", file=sys.stderr)
        sys.exit(1)

    content = path.read_text()
    new_content = patcher(content, path)
    if new_content == content:
        print(f"  Skipping {path} (already patched)")
        return False

    path.write_text(new_content)
    print(f"  Patched {path}")
    return True


def patch_provider_go(content: str, path: Path) -> str:
    if "ConfigAPIRoot types.String `tfsdk:\"config_api_root\"`" not in content:
        content = content.replace(
            "\tPassword     types.String `tfsdk:\"password\"`\n",
            "\tPassword      types.String `tfsdk:\"password\"`\n\tConfigAPIRoot types.String `tfsdk:\"config_api_root\"`\n",
            1,
        )
        content = content.replace(
            "\tBearerAuth   types.String `tfsdk:\"bearer_auth\"`\n\tClientID     types.String `tfsdk:\"client_id\"`\n\tClientSecret types.String `tfsdk:\"client_secret\"`\n\tPassword      types.String `tfsdk:\"password\"`\n\tConfigAPIRoot types.String `tfsdk:\"config_api_root\"`\n\tServerURL    types.String `tfsdk:\"server_url\"`",
            "\tBearerAuth    types.String `tfsdk:\"bearer_auth\"`\n\tClientID      types.String `tfsdk:\"client_id\"`\n\tClientSecret  types.String `tfsdk:\"client_secret\"`\n\tPassword      types.String `tfsdk:\"password\"`\n\tConfigAPIRoot types.String `tfsdk:\"config_api_root\"`\n\tServerURL     types.String `tfsdk:\"server_url\"`",
            1,
        )

    if '"config_api_root": schema.StringAttribute{' not in content:
        content = content.replace(
            '''\t\t\t"server_url": schema.StringAttribute{
\t\t\t\tDescription: `Server URL (defaults to https://api.airbyte.com/v1)`,
\t\t\t\tOptional:    true,
\t\t\t},''',
            '''\t\t\t"config_api_root": schema.StringAttribute{
\t\t\t\tDescription: `Internal config API root used for connection schedule features not exposed by the public API (defaults to the corresponding Airbyte config API for server_url).`,
\t\t\t\tOptional:    true,
\t\t\t},
\t\t\t"server_url": schema.StringAttribute{
\t\t\t\tDescription: `Server URL (defaults to https://api.airbyte.com/v1)`,
\t\t\t\tOptional:    true,
\t\t\t},''',
            1,
        )

    if "storeProviderRuntimeConfig(client, providerRuntimeConfig{ConfigAPIRoot: configAPIRoot})" not in content:
        content = content.replace(
            "\tclient := sdk.New(opts...)\n",
            "\tclient := sdk.New(opts...)\n\tconfigAPIRoot := data.ConfigAPIRoot.ValueString()\n\tif configAPIRoot == \"\" {\n\t\tconfigAPIRoot = deriveConfigAPIRoot(serverUrl)\n\t}\n\tstoreProviderRuntimeConfig(client, providerRuntimeConfig{ConfigAPIRoot: configAPIRoot})\n",
            1,
        )

    return content


def patch_connection_resource_go(content: str, path: Path) -> str:
    if '"cron_time_zone": schema.StringAttribute{' not in content:
        content = content.replace(
            '''\t\t\t\t\t"cron_expression": schema.StringAttribute{
\t\t\t\t\t\tComputed: true,
\t\t\t\t\t\tOptional: true,
\t\t\t\t\t\tPlanModifiers: []planmodifier.String{
\t\t\t\t\t\t\tspeakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
\t\t\t\t\t\t},
\t\t\t\t\t},''',
            '''\t\t\t\t\t"cron_expression": schema.StringAttribute{
\t\t\t\t\t\tComputed: true,
\t\t\t\t\t\tOptional: true,
\t\t\t\t\t\tPlanModifiers: []planmodifier.String{
\t\t\t\t\t\t\tspeakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
\t\t\t\t\t\t},
\t\t\t\t\t},
\t\t\t\t\t"cron_time_zone": schema.StringAttribute{
\t\t\t\t\t\tComputed: true,
\t\t\t\t\t\tOptional: true,
\t\t\t\t\t\tPlanModifiers: []planmodifier.String{
\t\t\t\t\t\t\tspeakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
\t\t\t\t\t\t},
\t\t\t\t\t\tDescription: `IANA time zone used to evaluate cron schedules, for example "America/New_York". Defaults to Airbyte's API default when omitted.`,
\t\t\t\t\t},''',
            1,
        )

    if "r.applyCronTimeZone(ctx, data, res.ConnectionResponse.ConnectionID, res.RawResponse)" not in content:
        content = content.replace(
            "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)\n\n\tif resp.Diagnostics.HasError() {",
            "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)\n\tresp.Diagnostics.Append(r.applyCronTimeZone(ctx, data, res.ConnectionResponse.ConnectionID, res.RawResponse)...)\n\n\tif resp.Diagnostics.HasError() {",
            1,
        )

    if "r.refreshCronTimeZone(ctx, data, res.RawResponse)" not in content:
        content = content.replace(
            "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)\n\n\tif resp.Diagnostics.HasError() {",
            "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)\n\tresp.Diagnostics.Append(r.refreshCronTimeZone(ctx, data, res.RawResponse)...)\n\n\tif resp.Diagnostics.HasError() {",
            1,
        )

    if "r.applyCronTimeZone(ctx, data, request.ConnectionID, res.RawResponse)" not in content:
        content = content.replace(
            "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)\n\n\tif resp.Diagnostics.HasError() {",
            "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)\n\tresp.Diagnostics.Append(r.applyCronTimeZone(ctx, data, request.ConnectionID, res.RawResponse)...)\n\n\tif resp.Diagnostics.HasError() {",
            1,
        )

    return content


def patch_connection_resource_sdk_go(content: str, path: Path) -> str:
    content = content.replace(
        "\tr.Schedule.CronExpression = types.StringPointerValue(resp.Schedule.CronExpression)\n",
        "\tapplyCronScheduleResponse(r.Schedule, resp.Schedule.CronExpression, nil)\n",
    )
    if content.count("cronExpressionForPublicAPI(r.Schedule)") == 0:
        content = content.replace(
            '''\t\tcronExpression := new(string)
\t\tif !r.Schedule.CronExpression.IsUnknown() && !r.Schedule.CronExpression.IsNull() {
\t\t\t*cronExpression = r.Schedule.CronExpression.ValueString()
\t\t} else {
\t\t\tcronExpression = nil
\t\t}
\t\tschedule = &shared.AirbyteAPIConnectionSchedule{
\t\t\tScheduleType:   scheduleType,
\t\t\tCronExpression: cronExpression,
\t\t}''',
            '''\t\tschedule = &shared.AirbyteAPIConnectionSchedule{
\t\t\tScheduleType:   scheduleType,
\t\t\tCronExpression: cronExpressionForPublicAPI(r.Schedule),
\t\t}''',
        )
    return content


def patch_connection_data_source_sdk_go(content: str, path: Path) -> str:
    return content.replace(
        "\tr.Schedule.CronExpression = types.StringPointerValue(resp.Schedule.CronExpression)\n",
        "\tapplyCronScheduleDataSourceResponse(r.Schedule, resp.Schedule.CronExpression, nil)\n",
    )


def patch_connections_data_source_sdk_go(content: str, path: Path) -> str:
    return content.replace(
        "\t\t\tdata.Schedule.CronExpression = types.StringPointerValue(dataItem.Schedule.CronExpression)\n",
        "\t\t\tapplyCronScheduleDataSourceResponse(data.Schedule, dataItem.Schedule.CronExpression, nil)\n",
    )


def patch_data_source_schema(content: str, path: Path) -> str:
    if '"cron_time_zone": schema.StringAttribute{' in content:
        return content
    return content.replace(
        '''"cron_expression": schema.StringAttribute{
Computed: true,
},''',
        '''"cron_expression": schema.StringAttribute{
Computed: true,
},
"cron_time_zone": schema.StringAttribute{
Computed: true,
},''',
        1,
    )


def patch_type(content: str, path: Path) -> str:
    if "CronTimeZone" in content:
        return content
    return content.replace(
        "\tCronExpression types.String `tfsdk:\"cron_expression\"`\n",
        "\tCronExpression types.String `tfsdk:\"cron_expression\"`\n\tCronTimeZone   types.String `tfsdk:\"cron_time_zone\"`\n",
        1,
    )


def main() -> None:
    print("Patching connection cron time zone support...")
    changed = False
    for path, patcher in [
        (PROVIDER_DIR / "provider.go", patch_provider_go),
        (PROVIDER_DIR / "connection_resource.go", patch_connection_resource_go),
        (PROVIDER_DIR / "connection_resource_sdk.go", patch_connection_resource_sdk_go),
        (PROVIDER_DIR / "connection_data_source.go", patch_data_source_schema),
        (PROVIDER_DIR / "connections_data_source.go", patch_data_source_schema),
        (PROVIDER_DIR / "connection_data_source_sdk.go", patch_connection_data_source_sdk_go),
        (PROVIDER_DIR / "connections_data_source_sdk.go", patch_connections_data_source_sdk_go),
        (TYPES_DIR / "airbyte_api_connection_schedule.go", patch_type),
        (TYPES_DIR / "connection_schedule_response.go", patch_type),
    ]:
        if patch_file(path, patcher):
            changed = True

    if changed:
        print("Done - connection cron time zone support applied.")
    else:
        print("Done - all files already patched.")


if __name__ == "__main__":
    main()
