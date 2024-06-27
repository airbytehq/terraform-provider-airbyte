resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "0634c9db-1c42-4670-9282-f0b308e78729"
  name          = "Mr. Emmett Hermiston"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b690b273-6f2f-47a3-b95d-4abcb3edfbba"
}