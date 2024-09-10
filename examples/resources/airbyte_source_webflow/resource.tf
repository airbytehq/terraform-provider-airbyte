resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "1920e562-c711-4d3e-b646-ca6a0584e97a"
  name          = "Leon Corkery DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d22882d9-facb-48ad-8cb7-919041885bed"
}