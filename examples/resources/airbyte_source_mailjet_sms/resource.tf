resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  name         = "Marlene Crist"
  secret_id    = "...my_secret_id..."
  workspace_id = "ff3818db-e50f-4cb3-aa78-173abb82e6a7"
}