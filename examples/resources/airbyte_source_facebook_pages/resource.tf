resource "airbyte_source_facebook_pages" "my_source_facebookpages" {
  configuration = {
    access_token = "...my_access_token..."
    page_id      = "...my_page_id..."
    source_type  = "facebook-pages"
  }
  name         = "Moses Wuckert"
  secret_id    = "...my_secret_id..."
  workspace_id = "39a910ab-dcab-4626-b669-6e1ec00221b3"
}