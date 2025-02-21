resource "airbyte_source_lightspeed_retail" "my_source_lightspeedretail" {
  configuration = {
    api_key   = "...my_api_key..."
    subdomain = "...my_subdomain..."
  }
  definition_id = "4a464d52-0854-4312-a482-5b160df72d77"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8a141f48-1a0b-4fb2-8695-232f583696cc"
}