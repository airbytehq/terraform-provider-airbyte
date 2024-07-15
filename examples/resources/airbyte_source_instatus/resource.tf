resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "4c65ed70-eb17-4cb4-bc24-002ca0d01711"
  name          = "Bobby Heidenreich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8dde04a9-ce3b-4e57-bfa4-6127442775ed"
}