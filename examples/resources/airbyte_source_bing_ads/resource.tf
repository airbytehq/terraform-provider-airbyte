resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    account_names = [
      {
        name     = "...my_name..."
        operator = "Equals"
      }
    ]
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    custom_reports = [
      {
        disable_custom_report_names_camel_to_snake_conversion = true
        name                                                  = "Account Performance"
        report_aggregation                                    = "...my_report_aggregation..."
        report_columns = [
          "..."
        ]
        reporting_object = "AdExtensionDetailReportRequest"
      }
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 80
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2021-12-24"
    tenant_id          = "...my_tenant_id..."
  }
  definition_id = "8a913fc3-a81b-4dc2-af5d-8db1e8246d7a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4b3ac887-f124-40a8-ae8c-9b91fd955bc7"
}