resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "2f7a3b95-d4ab-4cb3-adfb-bab6ad0e44a4"
  name          = "Wilbert Mayert DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "078573a2-0ac9-490f-9b2c-e7a67a85150e"
}