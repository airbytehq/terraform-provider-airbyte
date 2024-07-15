resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "expert-potato.info"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "4b7cf533-c55d-468a-96e1-f7b10c6dd1e6"
  name          = "Eloise Robel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf365dcc-aec2-4ce4-9cbe-1d2ecd01501d"
}