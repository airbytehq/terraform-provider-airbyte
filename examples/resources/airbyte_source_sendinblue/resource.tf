resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "9609725c-6d5a-45da-b503-9f4e4098bb8c"
  name          = "Blanche Collins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3c013462-1866-4cf5-98db-d5ebee014e07"
}