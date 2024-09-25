resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "78363f1b-e7e9-4b4a-abfc-5ff7146c36bb"
  name          = "Victoria Feest"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0beca93-a8ae-478e-9e53-7d96eb6d5dc1"
}