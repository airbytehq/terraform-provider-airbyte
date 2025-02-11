resource "airbyte_source_activecampaign" "my_source_activecampaign" {
  configuration = {
    account_username = "...my_account_username..."
    api_key          = "...my_api_key..."
  }
  definition_id = "a803b1f9-2bbf-4d45-8059-794f78b902fe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ae1c7c9a-2b03-4eee-843a-7ed67978265e"
}