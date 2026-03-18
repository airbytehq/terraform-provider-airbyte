resource "airbyte_source_goldcast" "my_source_goldcast" {
  configuration = {
    access_key            = "...my_access_key..."
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "c2c25d04-9bb1-4171-8a7a-bb7cead8add0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1e4e2d8b-a568-4f65-a5cf-fa40f9048f99"
}