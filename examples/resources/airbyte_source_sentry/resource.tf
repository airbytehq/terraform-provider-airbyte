resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "essential-doctrine.net"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "352ddb04-c9bc-4e38-bd66-444a186797a7"
  name          = "Mr. Robin Walker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "99e00879-e494-484a-b485-520644aee427"
}