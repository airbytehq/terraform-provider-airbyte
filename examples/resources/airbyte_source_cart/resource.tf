resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Thomas3"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "19028219-5430-4f89-a4a3-21f431fb3aad"
  name          = "Lillie Ledner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "612fcb5a-7fdd-4854-a0c3-9c22fe17df57"
}