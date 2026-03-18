resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    key                   = "...my_key..."
    start_date            = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "..."
    ]
    token = "...my_token..."
  }
  definition_id = "eb655362-28a8-4311-8806-4fcc612734a7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1ae5ddc1-32e1-440d-abfd-bbc323d309da"
}