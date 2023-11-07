resource "airbyte_source_facebook_pages" "my_source_facebookpages" {
  configuration = {
    access_token = "...my_access_token..."
    page_id      = "...my_page_id..."
  }
  name         = "Leslie Reinger"
  secret_id    = "...my_secret_id..."
  workspace_id = "25aa9f8c-7d41-4070-88d9-ffe8959afeef"
}