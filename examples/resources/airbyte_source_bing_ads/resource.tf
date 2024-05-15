resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "Velma Hodkiewicz"
        operator = "Contains"
      },
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_reports = [
      {
        name               = "Account Performance"
        report_aggregation = "...my_report_aggregation..."
        report_columns = [
          "...",
        ]
        reporting_object = "DestinationUrlPerformanceReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 0
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-05-16"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "9a4fa50e-807c-486b-90cb-f5314eea0fa2"
  name          = "Kayla Okuneva"
  secret_id     = "...my_secret_id..."
  workspace_id  = "367271c7-8a9a-4a96-83df-323c7d7845b7"
}