resource "airbyte_destination_xata" "my_destination_xata" {
  configuration = {
    api_key = "...my_api_key..."
    db_url  = "https://my-workspace-abc123.us-east-1.xata.sh/db/nyc-taxi-fares:main"
  }
  name         = "Shannon Kuvalis"
  workspace_id = "fec4ca4c-8c4b-4f88-a725-c3c6bc39a6d3"
}