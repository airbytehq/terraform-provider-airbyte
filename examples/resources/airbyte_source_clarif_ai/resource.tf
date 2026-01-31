resource "airbyte_source_clarif_ai" "my_source_clarifai" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-08-28T09:25:43.886Z"
    user_id               = "...my_user_id..."
  }
  definition_id = "90880be0-cbb4-45eb-88ab-4a768e21cbb9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0dd6472-8097-4732-b6f6-9a13e386c762"
}