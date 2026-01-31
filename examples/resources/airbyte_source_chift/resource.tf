resource "airbyte_source_chift" "my_source_chift" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
  }
  definition_id = "9c676dd3-62b2-4428-9116-4daad7cb26ee"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c89cdab2-ae44-4bc0-a6fa-3a4b7fe80911"
}