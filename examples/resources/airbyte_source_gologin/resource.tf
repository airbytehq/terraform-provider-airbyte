resource "airbyte_source_gologin" "my_source_gologin" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-07-10T11:35:15.310Z"
  }
  definition_id = "e36fe32e-14dd-448f-bb41-e651cc2e7842"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5291e5a2-2580-4a99-8455-b77d6cebbb47"
}