resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    jwt_token = "...my_jwt_token..."
  }
  name         = "Kenny Oberbrunner Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "d9d92226-9c9d-4648-b0bc-cdd2e95af6ed"
}