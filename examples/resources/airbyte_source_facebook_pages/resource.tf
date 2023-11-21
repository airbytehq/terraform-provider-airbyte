resource "airbyte_source_facebook_pages" "my_source_facebookpages" {
  configuration = {
    access_token = "...my_access_token..."
    page_id      = "...my_page_id..."
  }
  definition_id = "2edfee92-bc33-473a-92c8-87f28ef975a7"
  name          = "Scott Baumbach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5487915a-2f44-49e5-b0b6-8d5fb4b99e2f"
}