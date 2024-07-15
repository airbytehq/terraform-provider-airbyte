resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3e8ec69b-abb3-4389-b4cd-0d539af2319a"
  name          = "Darla Lockman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8d74d7cd-0670-4b63-8633-751f6c544c20"
}