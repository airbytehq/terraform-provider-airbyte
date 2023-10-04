resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Elijah Abbott"
  secret_id    = "...my_secret_id..."
  workspace_id = "20e39e10-d6ef-409f-b849-b0bdf3d5ca96"
}