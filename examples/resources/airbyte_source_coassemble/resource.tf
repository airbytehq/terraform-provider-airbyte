resource "airbyte_source_coassemble" "my_source_coassemble" {
  configuration = {
    user_id    = "...my_user_id..."
    user_token = "...my_user_token..."
  }
  definition_id = "44258de0-0776-4cf5-abd4-d67cfa889dbc"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "06f5b03f-2fe5-44ce-9f09-f2c22df1af8a"
}