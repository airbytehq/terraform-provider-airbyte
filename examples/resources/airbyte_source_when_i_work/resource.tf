resource "airbyte_source_when_i_work" "my_source_wheniwork" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    email                 = "...my_email..."
    password              = "...my_password..."
  }
  definition_id = "81ee3b58-ae1e-4727-be23-30248fa27a0a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "eab3f325-09ae-44d1-9400-c10cb8f97607"
}