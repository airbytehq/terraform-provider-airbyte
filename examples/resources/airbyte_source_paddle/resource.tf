resource "airbyte_source_paddle" "my_source_paddle" {
  configuration = {
    api_key     = "...my_api_key..."
    environment = "sandbox-api"
    start_date  = "2022-01-19T04:27:33.073Z"
  }
  definition_id = "ed50ea8e-77ae-45db-ab55-c23acae29c3e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2908f59f-617f-463d-a18e-5fb4509b544c"
}