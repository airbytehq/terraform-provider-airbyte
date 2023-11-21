resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "impressionable-honesty.org"
    organization = "...my_organization..."
    project      = "...my_project..."
  }
  definition_id = "72778d5d-b92d-416e-9dcb-06fc1f7a171f"
  name          = "Brooke Breitenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bfddb09b-9a90-43f6-8eb4-a54b7cf533c5"
}