resource "airbyte_source_sentry" "my_source_sentry" {
  configuration = {
    auth_token = "...my_auth_token..."
    discover_fields = [
      "{ \"see\": \"documentation\" }",
    ]
    hostname     = "muted-ingredient.biz"
    organization = "...my_organization..."
    project      = "...my_project..."
    source_type  = "sentry"
  }
  name         = "Krystal Quitzon"
  secret_id    = "...my_secret_id..."
  workspace_id = "4c59f0a5-6ceb-4cad-a29c-a79181c95671"
}