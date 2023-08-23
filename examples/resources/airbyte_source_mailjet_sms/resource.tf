resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date    = 1666281656
    source_type = "mailjet-sms"
    start_date  = 1666261656
    token       = "...my_token..."
  }
  name         = "Eleanor Gibson"
  secret_id    = "...my_secret_id..."
  workspace_id = "379f3fb2-7e21-4f86-a657-b36fc6b9f587"
}