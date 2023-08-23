resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key     = "...my_api_key..."
    company_id  = 9
    source_type = "recruitee"
  }
  name         = "Dr. Sean Williamson"
  secret_id    = "...my_secret_id..."
  workspace_id = "5eb4a8b6-74ee-45cf-818e-dc7f787e32e0"
}