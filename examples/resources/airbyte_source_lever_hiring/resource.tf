resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Sandbox"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "79a85cb7-2465-4180-a161-9872363e09a2"
  name          = "Homer Tremblay"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9d77025-755e-4699-9c57-652df199422b"
}