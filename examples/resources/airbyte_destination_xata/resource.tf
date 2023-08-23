resource "airbyte_destination_xata" "my_destination_xata" {
  configuration = {
    api_key          = "...my_api_key..."
    db_url           = "https://my-workspace-abc123.us-east-1.xata.sh/db/nyc-taxi-fares:main"
    destination_type = "xata"
  }
  name         = "Sally Dooley"
  workspace_id = "68451c6c-6e20-45e1-adea-b3fec9578a64"
}