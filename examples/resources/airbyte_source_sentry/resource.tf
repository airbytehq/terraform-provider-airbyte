resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "firsthand-hospice.com"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "d7c84461-977a-41b2-b1a5-b009f29606a3"
  name          = "Estelle Murray"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9592aaeb-21d8-49b3-9b55-8d4aa1770fe2"
}