resource "airbyte_destination_xata" "my_destination_xata" {
  configuration = {
    api_key = "...my_api_key..."
    db_url  = "https://my-workspace-abc123.us-east-1.xata.sh/db/nyc-taxi-fares:main"
  }
  definition_id = "52e57aa6-73d2-4825-9f0c-220e39e10d6e"
  name          = "Robert Mayert"
  workspace_id  = "849b0bdf-3d5c-4a96-8633-54ae1d23c3d1"
}