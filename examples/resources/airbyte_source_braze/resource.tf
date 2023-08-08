resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "braze"
    start_date  = "2022-06-22"
    url         = "...my_url..."
  }
  name         = "Irvin Rippin"
  secret_id    = "...my_secret_id..."
  workspace_id = "b4ecae6c-3d5d-4b3a-9ebd-5daea4c506a8"
}