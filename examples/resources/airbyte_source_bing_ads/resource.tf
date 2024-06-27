resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "Eula Ritchie"
        operator = "Equals"
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
        reporting_object = "ProductNegativeKeywordConflictReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 5
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-01-16"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "472f2e8b-bfe1-4822-ba33-308df445f49b"
  name          = "Chester Dach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f17b5c6-1c8d-42f7-9d6e-e9c7e7401902"
}