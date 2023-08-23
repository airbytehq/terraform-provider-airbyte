resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "gainsight-px"
  }
  name         = "Anita Dare III"
  secret_id    = "...my_secret_id..."
  workspace_id = "8b8502a5-5e7f-473b-8845-e320a319f4ba"
}