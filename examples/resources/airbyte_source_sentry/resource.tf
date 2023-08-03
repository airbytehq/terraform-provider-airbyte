resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "chubby-waterwheel.org"
    organization = "...my_organization..."
    project      = "...my_project..."
    source_type  = "sentry"
  }
  name         = "Mrs. Leland Crooks PhD"
  workspace_id = "38dc3ce1-8547-42f9-ae69-166a8be3444e"
}