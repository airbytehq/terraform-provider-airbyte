resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "persistiq"
  }
  name         = "Nicole Vandervort"
  secret_id    = "...my_secret_id..."
  workspace_id = "df55c294-c060-4b06-a128-7764eef6d0c6"
}