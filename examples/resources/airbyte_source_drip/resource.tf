resource "airbyte_source_drip" "my_source_drip" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "489079e9-9886-42ba-aa19-995b1c4b5495"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "defc769b-91e1-40c0-a867-525c4c5185fc"
}