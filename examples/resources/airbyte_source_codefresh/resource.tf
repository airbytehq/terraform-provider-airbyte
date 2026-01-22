resource "airbyte_source_codefresh" "my_source_codefresh" {
  configuration = {
    account_id = "...my_account_id..."
    api_key    = "...my_api_key..."
    report_date_range = [
      "{ \"see\": \"documentation\" }"
    ]
    report_granularity = "...my_report_granularity..."
    start_date         = "2022-11-24T01:03:59.526Z"
  }
  definition_id = "9f0c759d-7eba-49bd-a7ff-371e31b7bc2f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b4d0bea3-8b8f-464f-a11c-f1ae964a7c8d"
}