resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sendinblue"
  }
  name         = "Miss Loretta Howell PhD"
  secret_id    = "...my_secret_id..."
  workspace_id = "9136a7e8-d532-413f-bf65-8752db764c59"
}