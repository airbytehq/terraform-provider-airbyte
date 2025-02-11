resource "airbyte_source_marketstack" "my_source_marketstack" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-06-11T04:33:48.810Z"
  }
  definition_id = "867fa1d9-ef72-40f0-b3a8-885b29dc6236"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6809327e-2870-42b1-a284-df4db8e819d9"
}