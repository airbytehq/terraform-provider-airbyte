resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Phillip Beatty"
  secret_id    = "...my_secret_id..."
  workspace_id = "261684e7-3ef6-402c-915f-597cf5896557"
}