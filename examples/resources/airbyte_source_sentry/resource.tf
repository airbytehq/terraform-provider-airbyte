resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "focused-servitude.net"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "0d539af2-319a-46f8-898d-74d7cd0670b6"
  name          = "Johnnie Jacobs"
  secret_id     = "...my_secret_id..."
  workspace_id  = "751f6c54-4c20-4e73-b23d-c46e62d66e72"
}