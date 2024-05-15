resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "02bc2f7f-5dfb-42c2-ab49-86915d3324b4"
  name          = "Raymond Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "393429d3-165d-4d85-95e9-c61e20db5f4b"
}