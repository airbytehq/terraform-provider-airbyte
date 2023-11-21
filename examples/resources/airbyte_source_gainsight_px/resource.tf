resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "32b37f6f-ec5c-4d0a-8fda-52f69543b862"
  name          = "Cristina McKenzie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "50480aaa-f77a-4e08-bd2c-af83f045910a"
}