resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-08-21"
    url        = "...my_url..."
  }
  definition_id = "195430f8-964a-4321-b431-fb3aad078a36"
  name          = "Wanda Wisoky"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a7fdd85-4e0c-439c-a2fe-17df57adf107"
}