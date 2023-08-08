resource "airbyte_source_facebook_pages" "my_source_facebookpages" {
  configuration = {
    access_token = "...my_access_token..."
    page_id      = "...my_page_id..."
    source_type  = "facebook-pages"
  }
  name         = "Bernice Donnelly V"
  secret_id    = "...my_secret_id..."
  workspace_id = "b474b0ed-20e5-4624-8fff-639a910abdca"
}