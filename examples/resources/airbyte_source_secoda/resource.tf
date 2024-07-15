resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "58770229-72e2-437e-83d2-ab4198d2efe5"
  name          = "Allen Gutkowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "31e7a72e-f9ee-422c-8d08-0cde039dd5e8"
}