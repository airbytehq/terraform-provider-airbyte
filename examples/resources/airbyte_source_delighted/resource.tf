resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key     = "...my_api_key..."
    since       = "2022-05-30T04:50:23Z"
    source_type = "delighted"
  }
  name         = "Lucia Pacocha"
  secret_id    = "...my_secretId..."
  workspace_id = "41c480d3-f213-42af-8310-2d514f4cc6f1"
}