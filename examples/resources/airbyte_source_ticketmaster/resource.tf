resource "airbyte_source_ticketmaster" "my_source_ticketmaster" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "29cf30dc-0f53-4fda-929d-d0615bc8fe34"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a81165c1-cb0f-459a-aa54-53abc493c6e0"
}