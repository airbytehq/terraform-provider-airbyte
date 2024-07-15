resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "166a5ec4-6f2b-4ce2-a77b-bccef588ac54"
  name          = "Randolph Walker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a9dbf52-c792-493e-a8aa-81903348b38f"
}