resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    comic_number          = "2960"
  }
  definition_id = "80fddd16-17bd-4c0c-bf4a-80df7863fc9d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5777dac4-628e-4378-bcab-3876269ced4d"
}