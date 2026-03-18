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
    client_secret         = ""
    custom_reports = [
      {
        disable_custom_report_names_camel_to_snake_conversion = false
        name                                                  = "Account Performance"
        report_aggregation                                    = "...my_report_aggregation..."
        report_columns = [
          "..."
        ]
        reporting_object = "AdExtensionDetailReportRequest"
      }
    ]
    developer_token    = "...my_developer_token..."
    lookback_window    = 0
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2021-12-24"
    tenant_id          = "common"
  }
  definition_id = "47f25999-dd5e-4636-8c39-e7cea2453331"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4b3ac887-f124-40a8-ae8c-9b91fd955bc7"
}