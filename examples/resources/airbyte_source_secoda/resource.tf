resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6f1cbdb3-5a96-4cd0-a48f-1e4b30469b6c"
  name          = "George Ritchie I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf017cd9-7836-43f1-be7e-9b4aabfc5ff7"
}