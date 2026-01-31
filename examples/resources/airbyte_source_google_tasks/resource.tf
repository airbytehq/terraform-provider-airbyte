resource "airbyte_source_google_tasks" "my_source_googletasks" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    records_limit         = "...my_records_limit..."
    start_date            = "2021-03-18T12:11:09.006Z"
  }
  definition_id = "21fe239c-92e2-4e22-ab2a-455f8c2a65ce"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd436e48-7e2a-49d4-afb4-f7bb961e6024"
}