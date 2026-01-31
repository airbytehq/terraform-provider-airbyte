resource "airbyte_source_eventzilla" "my_source_eventzilla" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    x_api_key             = "...my_x_api_key..."
  }
  definition_id = "06126a24-7b5a-423b-82e5-9d220ad19def"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e92523f-ad12-4dd4-80b4-87256c23022b"
}