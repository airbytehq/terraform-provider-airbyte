resource "airbyte_source_opsgenie" "my_source_opsgenie" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    endpoint              = "api.opsgenie.com"
    start_date            = "2022-07-01T00:00:00Z"
  }
  definition_id = "52082930-f048-47a1-a0ab-af04e2bd64e8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "32e6c8a1-7551-46be-ae5c-f322c0b0c7cf"
}