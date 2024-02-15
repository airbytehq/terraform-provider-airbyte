resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "7ac01647-dc7c-4271-8504-4a25a4f7e4ea"
  name          = "Ramiro Dicki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7768e793-45d1-4446-b033-18f29cf10b07"
}