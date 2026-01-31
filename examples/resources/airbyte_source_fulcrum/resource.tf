resource "airbyte_source_fulcrum" "my_source_fulcrum" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "d797b502-01e5-44ec-a0b5-e71a41ad17b4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5bcccaa4-7f44-418f-ac38-508c2e64b224"
}