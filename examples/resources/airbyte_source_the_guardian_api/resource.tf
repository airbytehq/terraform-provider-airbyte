resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "environment AND political"
    section    = "media"
    start_date = "YYYY-MM-DD"
    tag        = "environment/energyefficiency"
  }
  definition_id = "a03eb3c0-afcc-43c8-ba6e-afbbc8e3e7db"
  name          = "Blanche Douglas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "46fc1e0f-a91f-47ef-9f46-2d7c84461977"
}