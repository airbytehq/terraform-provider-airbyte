resource "airbyte_source_smartwaiver" "my_source_smartwaiver" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "...my_start_date..."
    start_date_2          = "2022-03-30T22:53:49.956Z"
  }
  definition_id = "a3874059-42f1-41a0-8ff9-18ac0be92038"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cc79837d-110f-4821-928a-6200135b77be"
}