resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "gainsight-px"
  }
  name         = "Hugh Goodwin"
  secret_id    = "...my_secret_id..."
  workspace_id = "320a319f-4bad-4f94-bc9a-867bc4242666"
}