resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "40178456-a4c1-4173-9e2c-277a8e2388fd"
  name          = "Dr. Martha Cummings"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c51a267-6b4d-4928-aad1-9d25d5253fa0"
}