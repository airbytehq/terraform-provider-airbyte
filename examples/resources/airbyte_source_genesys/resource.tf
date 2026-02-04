resource "airbyte_source_genesys" "my_source_genesys" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    start_date      = "...my_start_date..."
    tenant_endpoint = "Asia Pacific (Mumbai)"
  }
  definition_id = "3eb1dbf6-2d77-4e3f-bf72-835199aa1cb7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6dfb7bef-7833-4348-a4fe-1c81e4c2a410"
}