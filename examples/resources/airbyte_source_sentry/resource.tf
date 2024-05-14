resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "another-sponsor.org"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "87dfe701-edbd-40d1-8cf5-7eb672b8aa55"
  name          = "Milton Fahey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a63da09-17a6-4151-bac3-e8ec69babb33"
}