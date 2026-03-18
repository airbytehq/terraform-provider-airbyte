resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    project_name          = "sampleproject"
    version               = "1.2.0"
  }
  definition_id = "88ecd3a8-5f5b-11ed-9b6a-0242ac120002"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2335868-409a-4949-842b-a879d4c95d01"
}