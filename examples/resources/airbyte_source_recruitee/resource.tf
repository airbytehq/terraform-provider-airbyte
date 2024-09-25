resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 1
  }
  definition_id = "b5a46242-8ebc-45c7-bead-f0c9ce16ebe8"
  name          = "Josefina Pacocha"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aee8d2bd-e48e-4efc-ab9e-0d54b0894bdd"
}