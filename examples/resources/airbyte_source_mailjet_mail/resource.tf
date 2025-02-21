resource "airbyte_source_mailjet_mail" "my_source_mailjetmail" {
  configuration = {
    api_key        = "...my_api_key..."
    api_key_secret = "...my_api_key_secret..."
  }
  definition_id = "e34cf533-fb97-457c-add1-59a3f83bbe8a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a924c3c4-bfc1-476e-9f3e-b78258d557e4"
}