resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "75e7d1c9-ddc2-4da3-a2fa-f1b28fe26cb1"
  name          = "Jonathon Bahringer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0b4e3441-26e7-4f29-b36e-237818d15373"
}