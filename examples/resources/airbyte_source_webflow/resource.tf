resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    accept_version = "1.0.0"
    api_key        = "a very long hex sequence"
    site_id        = "a relatively long hex sequence"
  }
  definition_id = "64f6ff9e-8e9f-4b1f-942f-e101b4395357"
  name          = "Geoffrey Rowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4750edd3-b5b4-4d0f-887b-07cfdecccf7a"
}