resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "linear-carnival.net"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "40ec9291-353f-4954-9bcc-34d389bbf5d2"
  name          = "Essie Hane Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "64e1dc4a-01d4-44fb-9761-0a4d0de91eaa"
}