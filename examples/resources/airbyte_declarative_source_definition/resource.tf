resource "airbyte_declarative_source_definition" "my_declarativesourcedefinition" {
  manifest     = "{ \"see\": \"documentation\" }"
  name         = "...my_name..."
  version      = 3
  workspace_id = "e5279006-d3bf-4277-ada7-423cb18aaece"
}