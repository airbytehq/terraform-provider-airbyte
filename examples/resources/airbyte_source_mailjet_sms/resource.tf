resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "eaaef524-043c-4b4c-873e-8c7bd5915174"
  name          = "Jorge Herman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da41daf7-626e-4f51-85fa-52e0c6c0cc93"
}