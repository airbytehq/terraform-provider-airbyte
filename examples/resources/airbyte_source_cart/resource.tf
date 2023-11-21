resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Ethyl.Bosco18"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "3ec1224a-7ffb-4268-9c18-7087d37ac99f"
  name          = "Jamie Macejkovic III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "12305e0c-1f4b-465d-9ebd-757e5946981c"
}