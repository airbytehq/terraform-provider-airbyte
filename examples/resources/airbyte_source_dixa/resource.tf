resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 31
    start_date = "YYYY-MM-DD"
  }
  definition_id = "66314cac-e02f-496b-8335-56f7e4181b36"
  name          = "Saul Bogisich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf94e3c7-9cbe-4ca1-8757-3a5bbba82d4c"
}