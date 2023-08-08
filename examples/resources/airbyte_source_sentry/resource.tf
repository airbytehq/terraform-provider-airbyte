resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "pesky-boon.info"
    organization = "...my_organization..."
    project      = "...my_project..."
    source_type  = "sentry"
  }
  name         = "Isabel Leuschke"
  secret_id    = "...my_secret_id..."
  workspace_id = "3444eac8-b3a2-4875-86c1-fe606d07d2a9"
}