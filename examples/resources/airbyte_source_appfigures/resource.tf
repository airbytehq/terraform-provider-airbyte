resource "airbyte_source_appfigures" "my_source_appfigures" {
  configuration = {
    api_key      = "...my_api_key..."
    group_by     = "country"
    search_store = "...my_search_store..."
    start_date   = "2022-10-16T08:12:09.283Z"
  }
  definition_id = "e10b1b39-4b84-4acd-b8db-6a4f7e23711b"
  name          = "Tonya Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d38a1edc-b36c-4da3-951c-bc15623ec645"
}