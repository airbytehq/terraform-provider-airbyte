resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "cbaa542e-6e08-4096-9d84-c3fbc24f860f"
  name          = "Elias Lockman V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8c116e72-6581-4ee6-b70f-a8ec1ba804bd"
}