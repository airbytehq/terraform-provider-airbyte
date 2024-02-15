resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "Mandy Lakin"
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
        reporting_object = "AgeGenderAudienceReportRequest"
      },
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 9
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-08-17"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "224a7ffb-268d-4c18-b087-d37ac99fd785"
  name          = "Willie Bogisich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "05e0c1f4-b65d-49eb-9757-e5946981cb46"
}