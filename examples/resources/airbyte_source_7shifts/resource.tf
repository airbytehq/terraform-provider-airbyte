resource "airbyte_source_7shifts" "my_source_7shifts" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2022-10-04T13:05:54.933Z"
  }
  definition_id = "88dfabd5-7111-4ac6-9dff-a69fe7143a3e"
  name          = "Pablo Conn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d7bc1a5a-6e1c-4c19-b137-2214027ee71b"
}