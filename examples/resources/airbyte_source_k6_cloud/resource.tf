resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "e300ece7-b073-43a3-852e-8aff36a57f13"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f855f74-3cb3-482c-8825-930ccf418ca0"
}