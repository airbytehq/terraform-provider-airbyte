resource "airbyte_source_uservoice" "my_source_uservoice" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2020-12-17T16:04:10.789Z"
    subdomain             = "...my_subdomain..."
  }
  definition_id = "c1105c8f-352b-45aa-a8c9-6e50cfced2f0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "60e002b0-4c5f-4158-91cc-8e940b7dda37"
}