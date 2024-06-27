resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "262d2a48-f976-4dd1-9df0-9849375f6227"
  name          = "Terrence Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1f13919c-925e-4386-917a-80112166a5ec"
}