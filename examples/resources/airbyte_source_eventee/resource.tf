resource "airbyte_source_eventee" "my_source_eventee" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "6579ef1e-a5be-428e-ac8c-cac8d2aa1032"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4749a147-4bf6-47ca-9bb0-047b4e548536"
}