resource "airbyte_source_klaus_api" "my_source_klausapi" {
  configuration = {
    account               = 0
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2020-10-15T00:00:00Z"
    workspace             = 6
  }
  definition_id = "4c607f26-2bfe-4681-b29e-899c36d49818"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b8237122-3963-4051-8c75-b691501da689"
}