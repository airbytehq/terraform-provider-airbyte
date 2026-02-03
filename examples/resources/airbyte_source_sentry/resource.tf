resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }"
    ]
    hostname     = "...my_hostname..."
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "224b3e94-d53b-4e9f-81ae-9a2d6b899fdf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f98e0e59-4799-4e21-9773-f1fd5decb3e6"
}