resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "Bert Bins"
        operator = "Equals"
      },
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_reports = [
      {
        name               = "AdDynamicTextPerformanceReport"
        report_aggregation = "...my_report_aggregation..."
        report_columns = [
          "...",
        ]
        reporting_object = "GeographicPerformanceReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 1
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-01-11"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "f7f1a27e-8fd2-4f19-bd4f-9ab29a2f8317"
  name          = "Frankie Runte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3eab02cc-b908-4523-9f16-a0cc4991982a"
}