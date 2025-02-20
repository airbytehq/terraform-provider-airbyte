resource "airbyte_source_split_io" "my_source_splitio" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-08-26T11:49:17.576Z"
  }
  definition_id = "67cd4ac0-fc92-4cee-9568-e3ac62638f2d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c1f1cd7-6b4f-478f-8c89-432fb6ff5be2"
}