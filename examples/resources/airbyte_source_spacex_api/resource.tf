resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    id                    = "...my_id..."
    options               = "...my_options..."
  }
  definition_id = "ad46abe7-8358-4dc7-8a83-cf0202884976"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0b4d74ca-4b40-45b7-97dd-c6933339e2ef"
}