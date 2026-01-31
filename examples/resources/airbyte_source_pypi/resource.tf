resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    project_name          = "sampleproject"
    version               = "1.2.0"
  }
  definition_id = "7ceb28d8-b84d-4270-aabd-2f5c63c08cfa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2335868-409a-4949-842b-a879d4c95d01"
}