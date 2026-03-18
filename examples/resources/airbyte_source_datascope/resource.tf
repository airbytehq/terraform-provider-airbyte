resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "dd/mm/YYYY HH:MM"
  }
  definition_id = "8e1ae2d2-4790-44d3-9d83-75b3fc3940ff"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2292273e-92fb-4a2a-9d00-148222335f72"
}