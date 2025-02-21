resource "airbyte_source_box" "my_source_box" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    user          = 6.73
  }
  definition_id = "c7ad126b-728e-4b2d-9d77-f77fc8ac9fe8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e25f3ea6-7b2d-4c64-b8cf-8fce098dbd25"
}