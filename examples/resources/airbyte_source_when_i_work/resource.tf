resource "airbyte_source_when_i_work" "my_source_wheniwork" {
  configuration = {
    email    = "...my_email..."
    password = "...my_password..."
  }
  definition_id = "f634cd12-ec11-48cf-8c00-8e13a5f17023"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "eab3f325-09ae-44d1-9400-c10cb8f97607"
}