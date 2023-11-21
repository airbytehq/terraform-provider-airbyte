resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "d703a4ee-b23f-4e55-b942-b58b6d0d2093"
  name          = "Krystal Krajcik"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8d8619ec-3981-4178-ae44-e5272c20971d"
}