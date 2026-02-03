resource "airbyte_source_just_sift" "my_source_justsift" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "be59f08b-e86a-446d-a6fb-f98afd03e031"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fca6a614-00f3-4ecc-8c33-79591bdcd051"
}