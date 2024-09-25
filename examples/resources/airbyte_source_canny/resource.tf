resource "airbyte_source_canny" "my_source_canny" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "16442d85-f5b6-4382-a70e-18a8172f9322"
  name          = "Rebecca Satterfield"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9cbaa542-e6e0-4809-a1d8-4c3fbc24f860"
}