resource "airbyte_source_clazar" "my_source_clazar" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
  }
  definition_id = "be209caa-593e-4b80-8ec8-c0a1f11671a5"
  name          = "Mercedes Abernathy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f4b5e4c1-9596-4433-a1d5-1484aac586d0"
}