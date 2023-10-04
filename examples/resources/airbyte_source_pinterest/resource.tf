resource "airbyte_source_pinterest" "my_source_pinterest" {
  configuration = {
    credentials = {
      source_pinterest_authorization_method_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2022-07-28"
    status = [
      "ARCHIVED",
    ]
  }
  name         = "Walter Bode"
  secret_id    = "...my_secret_id..."
  workspace_id = "8c1cd3af-e5ef-4853-81e2-2d9fe1bd2224"
}