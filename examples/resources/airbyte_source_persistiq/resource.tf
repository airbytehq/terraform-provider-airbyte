resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "d3cf89e6-921c-4e0c-ba6e-cf05091d908d"
  name          = "Mr. Levi Beahan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53384297-3372-4c40-ac92-91353f9549bc"
}