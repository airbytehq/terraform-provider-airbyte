resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "Sherri Bayer"
        operator = "Equals"
      },
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_reports = [
      {
        name               = "custom report"
        report_aggregation = "...my_report_aggregation..."
        report_columns = [
          "...",
        ]
        reporting_object = "HotelGroupPerformanceReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 4
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-10-01"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "a681eea7-4b87-4a1f-b187-d33223d80bb9"
  name          = "Curtis Jenkins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2f45974a-2ebc-4368-8abb-376bce66a7c0"
}