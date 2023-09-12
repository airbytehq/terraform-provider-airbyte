resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date    = 1666281656
    source_type = "mailjet-sms"
    start_date  = 1666261656
    token       = "...my_token..."
  }
  name         = "Dr. Eloise Cronin"
  secret_id    = "...my_secret_id..."
  workspace_id = "62657b36-fc6b-49f5-87ce-525c67641a83"
}