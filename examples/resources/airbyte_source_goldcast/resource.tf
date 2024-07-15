resource "airbyte_source_goldcast" "my_source_goldcast" {
  configuration = {
    access_key = "...my_access_key..."
  }
  definition_id = "df259349-552d-4c82-98f3-0a27183b00ec"
  name          = "Melissa Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "56c03ec7-b8b6-48fd-bc06-92b4fd673f59"
}