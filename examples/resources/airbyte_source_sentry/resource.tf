resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "unimportant-glacier.biz"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "eb5fcf36-5dcc-4aec-ace4-1cbe1d2ecd01"
  name          = "Angela Boehm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2f6c56d3-cf89-4e69-a1ce-0c7a6ecf0509"
}