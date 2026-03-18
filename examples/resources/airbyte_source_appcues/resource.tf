resource "airbyte_source_appcues" "my_source_appcues" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    start_date            = "2022-10-13T19:22:32.624Z"
    username              = "...my_username..."
  }
  definition_id = "3bab735a-e108-4c94-ab3f-414e3447b409"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b0c8cf4-c3c9-438c-8a6c-75a2b0d52f29"
}