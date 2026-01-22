resource "airbyte_source_hellobaton" "my_source_hellobaton" {
  configuration = {
    api_key = "...my_api_key..."
    company = "google"
  }
  definition_id = "04d57ca0-d9f4-4e12-b74c-f0208efa62a7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "91eff118-736f-4ddc-869f-fa6abfe44035"
}