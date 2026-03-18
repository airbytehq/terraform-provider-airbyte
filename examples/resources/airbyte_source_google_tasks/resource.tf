resource "airbyte_source_google_tasks" "my_source_googletasks" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    records_limit         = "50"
    start_date            = "2021-03-18T12:11:09.006Z"
  }
  definition_id = "751c2519-1446-416e-9736-9b98585f8125"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd436e48-7e2a-49d4-afb4-f7bb961e6024"
}