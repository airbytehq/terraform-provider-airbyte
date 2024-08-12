resource "airbyte_source_fleetio" "my_source_fleetio" {
  configuration = {
    account_token = "...my_account_token..."
    api_key       = "...my_api_key..."
  }
  definition_id = "a7fcdac6-3878-454b-a9c4-2e8b9a534c06"
  name          = "Merle Hills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e94eff21-1adf-4c72-9dd1-f80239a92966"
}