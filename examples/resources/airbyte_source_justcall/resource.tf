resource "airbyte_source_justcall" "my_source_justcall" {
  configuration = {
    api_key_2  = "...my_api_key_2..."
    start_date = "2022-08-06T09:23:13.895Z"
  }
  definition_id = "dcc6c168-8991-4397-acd3-768794228a04"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8fa39531-85e4-4e5c-bcd7-c6d1fe4f108b"
}