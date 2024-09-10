resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Joelle30"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "73b75739-1086-418e-9144-5d83c494a849"
  name          = "Ms. Kristopher Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e32c2e3-02e6-4de9-ab3e-43098446f983"
}