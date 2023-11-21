resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "92033b17-bfcc-4526-af10-da401fb0fc52"
  name          = "Gladys Adams"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9994a41e-4a89-485c-b8fa-7d86bdf5bf91"
}