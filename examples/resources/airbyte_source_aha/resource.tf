resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "24213ca1-059f-41e3-8360-fc0eaa50681b"
  name          = "Jimmy Oberbrunner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "090c0138-42c1-401e-a65e-ebc230b15094"
}