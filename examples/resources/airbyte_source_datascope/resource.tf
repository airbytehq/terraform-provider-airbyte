resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "dd/mm/YYYY HH:MM"
  }
  definition_id = "200f9c0e-d455-4199-96c3-9b473f66c92f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2292273e-92fb-4a2a-9d00-148222335f72"
}