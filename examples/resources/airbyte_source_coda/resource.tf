resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
  }
  definition_id = "34f0119b-3776-415f-893d-933b24458c6b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b73364e1-f8bf-4063-b2f7-8fa23b543f14"
}