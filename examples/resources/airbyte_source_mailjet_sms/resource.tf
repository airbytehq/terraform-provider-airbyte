resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "b5eaa64b-86a4-42db-bb85-3ec4b5e6a18b"
  name          = "Christie Kshlerin Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3de8da44-3bfa-4add-a9a6-dff6cb6bf32f"
}