resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "6a42dbbb-853e-4c4b-9e6a-18b0d79003de"
  name          = "Gilberto Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3bfaadd2-9a6d-4ff6-8b6b-f32faf825bea"
}