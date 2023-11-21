resource "airbyte_destination_xata" "my_destination_xata" {
  configuration = {
    api_key = "...my_api_key..."
    db_url  = "https://my-workspace-abc123.us-east-1.xata.sh/db/nyc-taxi-fares:main"
  }
  definition_id = "013842c1-01e2-465e-abc2-30b15094cc21"
  name          = "Derrick Green"
  workspace_id  = "b75e7d1c-9ddc-42da-b62f-af1b28fe26cb"
}