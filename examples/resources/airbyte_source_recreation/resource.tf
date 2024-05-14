resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "1d217c0f-cbe7-4d2d-b433-ea862799cad5"
  name          = "Alex Prohaska"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3469d341-0e39-45a0-aac5-5dc9d0978821"
}