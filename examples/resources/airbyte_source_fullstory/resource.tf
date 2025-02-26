resource "airbyte_source_fullstory" "my_source_fullstory" {
  configuration = {
    api_key = "...my_api_key..."
    uid     = "...my_uid..."
  }
  definition_id = "d9d2815d-2f1e-4fac-bfb6-2696b26178aa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e57f0d0c-f53b-41e8-9a4e-e1b78974aead"
}