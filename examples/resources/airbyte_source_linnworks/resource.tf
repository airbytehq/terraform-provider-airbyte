resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    application_id        = "...my_application_id..."
    application_secret    = "...my_application_secret..."
    start_date            = "2020-12-21T06:32:33.807Z"
    token                 = "...my_token..."
  }
  definition_id = "7b86879e-26c5-4ef6-a5ce-2be5c7b46d1e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "edbb51ee-1b69-47f5-a33b-fed5630aded2"
}