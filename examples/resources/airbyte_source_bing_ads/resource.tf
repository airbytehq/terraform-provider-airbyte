resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "Jennie Gleason"
        operator = "Contains"
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
        reporting_object = "AdExtensionByKeywordReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 6
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-10-18"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "8b218b70-494d-4a21-b79c-fd9baf3821de"
  name          = "Kurt D'Amore"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dad9e5fb-5312-4669-9bfb-5db9ea24da51"
}