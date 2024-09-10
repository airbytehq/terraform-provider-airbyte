resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "713464ed-5bf6-4d67-b06c-c548e68cfaef"
  name          = "Dr. Tom Langworth"
  secret_id     = "...my_secret_id..."
  workspace_id  = "143ee10f-8279-4e42-bb2c-340e1d4b428b"
}