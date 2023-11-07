resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "pushy-know-how.info"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  name         = "Essie Schneider V"
  secret_id    = "...my_secret_id..."
  workspace_id = "4306e082-909d-497b-babb-ad3671a9ca1d"
}