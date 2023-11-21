resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_reports = [
      {
        name               = "AdDynamicTextPerformanceReport"
        report_aggregation = "...my_report_aggregation..."
        report_columns = [
          "...",
        ]
        reporting_object = "ShareOfVoiceReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 3
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-08-17"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "f49be625-99f1-47b5-861c-8d2f7dd6ee9c"
  name          = "Delia Kub Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "90282195-430f-4896-8a32-1f431fb3aad0"
}