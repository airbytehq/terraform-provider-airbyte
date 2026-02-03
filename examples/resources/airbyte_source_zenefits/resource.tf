resource "airbyte_source_zenefits" "my_source_zenefits" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    token                 = "...my_token..."
  }
  definition_id = "8658c408-5e6f-4ee8-a5e3-05ae60b08fd5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "986b7f9f-7008-4f2d-9207-bbc19bfbcd7d"
}