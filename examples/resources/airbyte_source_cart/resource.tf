resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Yadira_Schmidt33"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "198c116e-7265-481e-a677-0fa8ec1ba804"
  name          = "Dewey Kautzer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a40e885-1a35-441b-a6f5-d90d5a8a349e"
}