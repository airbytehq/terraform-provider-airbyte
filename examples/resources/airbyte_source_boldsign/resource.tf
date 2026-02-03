resource "airbyte_source_boldsign" "my_source_boldsign" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-01-28T15:17:55.448Z"
  }
  definition_id = "b62b2937-bc81-4d40-bc7b-f50c10a6805e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ce1f130-09aa-4c6a-84ff-ea18f370cc64"
}