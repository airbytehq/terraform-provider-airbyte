resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "2eafdc45-3fb6-4a01-92c4-47712b4a0208"
  name          = "Lee Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "beffb8d9-7651-4059-b440-a5f2f61a4e46"
}