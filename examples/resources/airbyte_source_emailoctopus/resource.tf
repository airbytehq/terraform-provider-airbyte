resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "46b25e70-c980-4590-a811-8deaf50ee09f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ca0daa2a-a8c7-4462-9e10-c89a2a7450a0"
}