resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    id                    = "...my_id..."
    options               = "...my_options..."
  }
  definition_id = "62235e65-af7a-4138-9130-0bda954eb6a8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0b4d74ca-4b40-45b7-97dd-c6933339e2ef"
}