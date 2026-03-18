resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }"
    ]
    hostname     = "sentry.io"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "cdaf146a-9b75-49fd-9dd2-9d64a0bb4781"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f98e0e59-4799-4e21-9773-f1fd5decb3e6"
}