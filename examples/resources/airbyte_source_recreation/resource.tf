resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "b09b9a90-3f60-4eb4-a54b-7cf533c55d68"
  name          = "Lloyd Kertzmann DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7b10c6dd-1e62-4eb5-bcf3-65dccaec2ce4"
}