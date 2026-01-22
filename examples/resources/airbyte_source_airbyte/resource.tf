resource "airbyte_source_airbyte" "my_source_airbyte" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    host          = "...my_host..."
    start_date    = "2022-12-29T07:07:00.688Z"
  }
  definition_id = "6fa8ac99-ed55-45de-a619-5d351af078c3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bdda370d-dbed-40cd-8e2a-2a6cb954c379"
}