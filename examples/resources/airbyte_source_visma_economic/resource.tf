resource "airbyte_source_visma_economic" "my_source_vismaeconomic" {
  configuration = {
    agreement_grant_token = "...my_agreement_grant_token..."
    app_secret_token      = "...my_app_secret_token..."
  }
  definition_id = "e968399c-f9d9-4889-90e4-6499bab04e8d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "93e61512-b058-42f4-a840-aeeeefedf12a"
}