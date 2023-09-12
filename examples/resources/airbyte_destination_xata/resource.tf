resource "airbyte_destination_xata" "my_destination_xata" {
  configuration = {
    api_key          = "...my_api_key..."
    db_url           = "https://my-workspace-abc123.us-east-1.xata.sh/db/nyc-taxi-fares:main"
    destination_type = "xata"
  }
  name         = "Oscar Smith"
  workspace_id = "e68e4be0-5601-43f5-9da7-57a59ecfef66"
}