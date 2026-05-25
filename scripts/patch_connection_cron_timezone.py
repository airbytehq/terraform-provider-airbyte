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


def fail(path: Path, message: str) -> None:
    print(f"ERROR: {path}: {message}", file=sys.stderr)
    sys.exit(1)


def replace_once(content: str, old: str, new: str, path: Path) -> str:
    count = content.count(old)
    if count != 1:
        fail(path, f"Expected exactly 1 occurrence of {old!r}; found {count}")
    return content.replace(old, new, 1)


def replace_if_missing(content: str, marker: str, old: str, new: str, path: Path) -> str:
    if marker in content:
        return content
    return replace_once(content, old, new, path)


def replace_all_if_missing(content: str, marker: str, old: str, new: str) -> str:
    if marker in content:
        return content
    return content.replace(old, new)


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
    content = replace_all_if_missing(
        content,
        "ConfigAPIRoot types.String `tfsdk:\"config_api_root\"`",
        "\tPassword     types.String `tfsdk:\"password\"`\n",
        "\tPassword      types.String `tfsdk:\"password\"`\n\tConfigAPIRoot types.String `tfsdk:\"config_api_root\"`\n",
    )
    content = replace_if_missing(
        content,
        '"config_api_root": schema.StringAttribute{',
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
        path,
    )
    content = replace_if_missing(
        content,
        "configAPIRoot := data.ConfigAPIRoot.ValueString()",
        "\tclient := sdk.New(opts...)\n",
        "\tclient := sdk.New(opts...)\n\tconfigAPIRoot := data.ConfigAPIRoot.ValueString()\n\tif configAPIRoot == \"\" {\n\t\tconfigAPIRoot = deriveConfigAPIRoot(serverUrl)\n\t}\n",
        path,
    )
    content = replace_if_missing(
        content,
        "providerData := &configuredProviderData{",
        "\tresp.ResourceData = client\n",
        "\tproviderData := &configuredProviderData{\n\t\tClient: client,\n\t\tRuntimeConfig: providerRuntimeConfig{\n\t\t\tConfigAPIRoot: configAPIRoot,\n\t\t\tHTTPClient:    httpClient,\n\t\t},\n\t}\n\tresp.ResourceData = providerData\n",
        path,
    )

    return content


def patch_connection_resource_go(content: str, path: Path) -> str:
    content = replace_if_missing(
        content,
        '"cron_time_zone": schema.StringAttribute{',
        '\t\t\t\t\t"cron_expression": schema.StringAttribute{\n\t\t\t\t\t\tComputed: true,\n\t\t\t\t\t\tOptional: true,\n\t\t\t\t\t\tPlanModifiers: []planmodifier.String{\n\t\t\t\t\t\t\tspeakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),\n\t\t\t\t\t\t},\n\t\t\t\t\t},',
        '\t\t\t\t\t"cron_expression": schema.StringAttribute{\n\t\t\t\t\t\tComputed: true,\n\t\t\t\t\t\tOptional: true,\n\t\t\t\t\t\tPlanModifiers: []planmodifier.String{\n\t\t\t\t\t\t\tspeakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),\n\t\t\t\t\t\t},\n\t\t\t\t\t},\n\t\t\t\t\t"cron_time_zone": schema.StringAttribute{\n\t\t\t\t\t\tComputed: true,\n\t\t\t\t\t\tOptional: true,\n\t\t\t\t\t\tPlanModifiers: []planmodifier.String{\n\t\t\t\t\t\t\tspeakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),\n\t\t\t\t\t\t},\n\t\t\t\t\t\tDescription: `IANA time zone used to evaluate cron schedules, for example "America/New_York". Defaults to Airbyte\'s API default when omitted.`,\n\t\t\t\t\t},',
        path,
    )
    content = replace_if_missing(
        content,
        "config providerRuntimeConfig",
        "type ConnectionResource struct {\n\t// Provider configured SDK client.\n\tclient *sdk.SDK\n}",
        "type ConnectionResource struct {\n\t// Provider configured SDK client.\n\tclient *sdk.SDK\n\tconfig providerRuntimeConfig\n}",
        path,
    )
    content = replace_if_missing(
        content,
        "connectionResourceProviderData(req.ProviderData)",
        "client, ok := req.ProviderData.(*sdk.SDK)",
        "client, config, ok := connectionResourceProviderData(req.ProviderData)",
        path,
    )
    content = replace_if_missing(
        content,
        "r.config = config",
        "\tr.client = client\n",
        "\tr.client = client\n\tr.config = config\n",
        path,
    )
    content = content.replace(
        'fmt.Sprintf("Expected *sdk.SDK, got: %T. Please report this issue to the provider developers.", req.ProviderData)',
        'fmt.Sprintf("Expected *configuredProviderData, got: %T. Please report this issue to the provider developers.", req.ProviderData)',
    )
    content = replace_if_missing(
        content,
        "r.applyCronTimeZone(ctx, data, res.ConnectionResponse.ConnectionID, res.RawResponse, plannedCronTimeZone)",
        """	resp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)

	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(refreshPlan(ctx, plan, &data)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *ConnectionResource) Read""",
        """	plannedCronTimeZone := configuredCronTimeZone(data.Schedule)
	resp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)
	resp.Diagnostics.Append(r.applyCronTimeZone(ctx, data, res.ConnectionResponse.ConnectionID, res.RawResponse, plannedCronTimeZone)...)

	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(refreshPlan(ctx, plan, &data)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *ConnectionResource) Read""",
        path,
    )
    content = replace_if_missing(
        content,
        "r.refreshCronTimeZone(ctx, data, res.RawResponse, previousCronTimeZone)",
        """	resp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *ConnectionResource) Update""",
        """	previousCronTimeZone := configuredCronTimeZone(data.Schedule)
	resp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)
	resp.Diagnostics.Append(r.refreshCronTimeZone(ctx, data, res.RawResponse, previousCronTimeZone)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *ConnectionResource) Update""",
        path,
    )
    content = replace_if_missing(
        content,
        "r.applyCronTimeZone(ctx, data, request.ConnectionID, res.RawResponse, plannedCronTimeZone)",
        """	resp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)

	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(refreshPlan(ctx, plan, &data)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *ConnectionResource) Delete""",
        """	plannedCronTimeZone := configuredCronTimeZone(data.Schedule)
	resp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)
	resp.Diagnostics.Append(r.applyCronTimeZone(ctx, data, request.ConnectionID, res.RawResponse, plannedCronTimeZone)...)

	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(refreshPlan(ctx, plan, &data)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *ConnectionResource) Delete""",
        path,
    )

    return content

def patch_connection_resource_sdk_go(content: str, path: Path) -> str:
    content = replace_if_missing(
        content,
        "applyCronScheduleResponse(r.Schedule, resp.Schedule.CronExpression, nil)",
        "\tr.Schedule.CronExpression = types.StringPointerValue(resp.Schedule.CronExpression)\n",
        "\tapplyCronScheduleResponse(r.Schedule, resp.Schedule.CronExpression, nil)\n",
        path,
    )
    content = replace_all_if_missing(
        content,
        "cronExpressionForPublicAPI(r.Schedule)",
        "\t\t\tCronExpression: cronExpression,\n",
        "\t\t\tCronExpression: cronExpressionForPublicAPI(r.Schedule),\n",
    )
    return content


def patch_connection_data_source_sdk_go(content: str, path: Path) -> str:
    return replace_if_missing(
        content,
        "applyCronScheduleDataSourceResponse(r.Schedule, resp.Schedule.CronExpression, nil)",
        "\tr.Schedule.CronExpression = types.StringPointerValue(resp.Schedule.CronExpression)\n",
        "\tapplyCronScheduleDataSourceResponse(r.Schedule, resp.Schedule.CronExpression, nil)\n",
        path,
    )


def patch_connections_data_source_sdk_go(content: str, path: Path) -> str:
    return replace_if_missing(
        content,
        "applyCronScheduleDataSourceResponse(data.Schedule, dataItem.Schedule.CronExpression, nil)",
        "\t\t\tdata.Schedule.CronExpression = types.StringPointerValue(dataItem.Schedule.CronExpression)\n",
        "\t\t\tapplyCronScheduleDataSourceResponse(data.Schedule, dataItem.Schedule.CronExpression, nil)\n",
        path,
    )


def add_cron_time_zone_schema(content: str, path: Path) -> str:
    if '"cron_time_zone": schema.StringAttribute{' in content:
        return content

    lines = content.splitlines(keepends=True)
    matches = [index for index, line in enumerate(lines) if '"cron_expression": schema.StringAttribute{' in line]
    if len(matches) != 1:
        fail(path, f"Expected exactly 1 cron_expression schema attribute; found {len(matches)}")

    start = matches[0]
    end = None
    for index in range(start + 1, len(lines)):
        if lines[index].strip() == "},":
            end = index
            break
    if end is None:
        fail(path, "Could not find end of cron_expression schema attribute")

    indent = lines[start].split('"cron_expression"')[0]
    insertion = [
        f'{indent}"cron_time_zone": schema.StringAttribute{{\n',
        f"{indent}\tComputed: true,\n",
        f"{indent}}},\n",
    ]
    return "".join(lines[: end + 1] + insertion + lines[end + 1 :])


def patch_data_source_schema(content: str, path: Path) -> str:
    return add_cron_time_zone_schema(content, path)


def patch_type(content: str, path: Path) -> str:
    return replace_if_missing(
        content,
        "CronTimeZone",
        "\tCronExpression types.String `tfsdk:\"cron_expression\"`\n",
        "\tCronExpression types.String `tfsdk:\"cron_expression\"`\n\tCronTimeZone   types.String `tfsdk:\"cron_time_zone\"`\n",
        path,
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
