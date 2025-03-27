resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      private_app = {
        access_token = "...my_access_token..."
      }
    }
    enable_experimental_streams = false
    start_date                  = "2017-01-25T00:00:00Z"
  }
  definition_id = "5a78ec38-3a27-4695-8c44-7a6d7e5af928"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5867a7a3-cda1-42de-aa60-dea6430ea0d1"
}