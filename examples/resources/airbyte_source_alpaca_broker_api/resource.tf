resource "airbyte_source_alpaca_broker_api" "my_source_alpacabrokerapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    environment           = "api"
    limit                 = "...my_limit..."
    password              = "...my_password..."
    start_date            = "2022-01-01T07:08:08.248Z"
    username              = "...my_username..."
  }
  definition_id = "22d41f1e-fc84-4229-9677-0f6ecbe40e89"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a977cb77-17ce-475c-ad2d-c9e93ade1b42"
}