resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2020-04-19T13:13:57.767Z"
  }
  definition_id = "5d6cd518-d67a-4149-85bc-cd47ab65338e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8a5f6354-06a9-4256-a3ae-3a64afce5097"
}