resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6f8898d7-4d7c-4d06-b0b6-3c633751f6c5"
  name          = "Debbie Sanford PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "73f23dc4-6e62-4d66-a727-78d5db92d16e"
}