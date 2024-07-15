resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Briana_Hettinger45"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "f1a27e8f-d2f1-493d-8f9a-b29a2f8317de"
  name          = "Herbert Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab02ccb9-0852-43df-96a0-cc4991982a68"
}