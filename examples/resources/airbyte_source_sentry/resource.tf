resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "imperfect-creator.name"
    organization = "...my_organization..."
    project      = "...my_project..."
    source_type  = "sentry"
  }
  name         = "Laurie Farrell"
  secret_id    = "...my_secret_id..."
  workspace_id = "12ab2521-b9f2-4e07-a467-b8a40bc05fab"
}