resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "043ef09e-61b7-45b7-a676-5eab1ad84295"
  name          = "Juana Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bdc8b93-f80b-47f5-9709-4a97b6356d53"
}