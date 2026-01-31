resource "airbyte_source_timely" "my_source_timely" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    bearer_token          = "...my_bearer_token..."
    start_date            = "2021-07-25T17:34:15.578Z"
  }
  definition_id = "5fd14cb8-5430-409c-9514-2e1de03f03e6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "410875f4-a4d0-4c96-8df7-1fc783721aae"
}