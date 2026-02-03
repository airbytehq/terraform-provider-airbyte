resource "airbyte_source_partnerize" "my_source_partnerize" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    application_key       = "...my_application_key..."
    user_api_key          = "...my_user_api_key..."
  }
  definition_id = "8260fda9-ea54-42dc-be8a-31be760fff16"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "aea45ff6-3ffb-442e-9276-a3235f98085b"
}