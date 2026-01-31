resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    comic_number          = "...my_comic_number..."
  }
  definition_id = "2b2c7dfe-6577-4e36-befe-1da58a99d429"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5777dac4-628e-4378-bcab-3876269ced4d"
}