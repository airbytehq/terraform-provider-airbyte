resource "airbyte_source_vwo" "my_source_vwo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-04-14T09:22:29.845Z"
  }
  definition_id = "f32702a4-adac-4742-8e54-8790b8bfd6a0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7202b423-aecf-4ba5-9ca0-66ea3ebd85e8"
}