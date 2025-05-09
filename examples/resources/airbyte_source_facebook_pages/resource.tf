resource "airbyte_source_facebook_pages" "my_source_facebookpages" {
  configuration = {
    access_token = "...my_access_token..."
    page_id      = "...my_page_id..."
  }
  definition_id = "783a22ed-dd2e-43e9-b2c4-96793eafad9e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e091fa3-b23f-4189-9aa3-f254652fec30"
}