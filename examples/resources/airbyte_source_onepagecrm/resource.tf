resource "airbyte_source_onepagecrm" "my_source_onepagecrm" {
  configuration = {
    password = "...my_password..."
    username = "...my_username..."
  }
  definition_id = "5f2024a7-319c-4b28-aee9-60f0b8d648c7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "53181500-50e2-44f9-b227-62c567aec0f7"
}