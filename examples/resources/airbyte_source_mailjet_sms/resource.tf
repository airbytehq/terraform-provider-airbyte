resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date    = 1666281656
    source_type = "mailjet-sms"
    start_date  = 1666261656
    token       = "...my_token..."
  }
  name         = "Darrin Graham"
  secret_id    = "...my_secretId..."
  workspace_id = "4573fecd-4735-43f6-bc82-09379aa69cd5"
}