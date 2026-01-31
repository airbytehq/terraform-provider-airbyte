resource "airbyte_source_squarespace" "my_source_squarespace" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-04-04T02:31:20.721Z"
  }
  definition_id = "41cdaabd-549a-4aff-a1ce-2ddc1a3aec1c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3cad5fbd-5141-413c-9fcb-639de1ee0d5f"
}