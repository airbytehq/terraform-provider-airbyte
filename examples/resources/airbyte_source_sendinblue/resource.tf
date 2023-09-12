resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sendinblue"
  }
  name         = "Terence Kassulke III"
  secret_id    = "...my_secret_id..."
  workspace_id = "6a8be344-4eac-48b3-a287-5c6c1fe606d0"
}