resource "airbyte_source_adjust" "my_source_adjust" {
  configuration = {
    additional_metrics = [
      "..."
    ]
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    dimensions = [
      "currency"
    ]
    ingest_start = "2022-02-04"
    metrics = [
      "click_cost"
    ]
    until_today = true
  }
  definition_id = "94c3b374-e002-4c16-95b3-90cbd219a249"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c07e05b-591e-476b-8f7b-57a00aa86c14"
}