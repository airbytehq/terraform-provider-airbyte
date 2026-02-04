resource "airbyte_source_public_apis" "my_source_publicapis" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "1eebca10-ecca-4b90-9f16-e320ce6b7c43"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "13b37ae1-92f9-46e0-9b49-7996ea9bb0d5"
}