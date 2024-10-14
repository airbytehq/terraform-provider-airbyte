resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
      o_auth20 = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    start_date = "2021-02-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "0e292d86-9483-43d3-8271-797f9030e946"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "163f1f29-3c8c-43af-8d79-98eebba4d690"
}