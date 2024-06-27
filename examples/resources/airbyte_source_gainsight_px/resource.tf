resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "f77ae08f-d2ca-4f83-b045-910a7c570570"
  name          = "Guy Langosh III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9da4e6d7-c2fc-4aa3-86da-1d2ddf0351c4"
}