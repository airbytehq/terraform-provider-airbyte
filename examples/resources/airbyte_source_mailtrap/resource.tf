resource "airbyte_source_mailtrap" "my_source_mailtrap" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "26d10b22-a761-4d48-9bcc-03638cac2f2b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd492027-838c-4abe-9a10-37af82d6656d"
}