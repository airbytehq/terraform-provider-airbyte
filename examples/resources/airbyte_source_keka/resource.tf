resource "airbyte_source_keka" "my_source_keka" {
  configuration = {
    api_key       = "...my_api_key..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    grant_type    = "...my_grant_type..."
    scope         = "...my_scope..."
  }
  definition_id = "52f4c273-734d-4838-ade2-34fd68c75593"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ce4f0cee-b648-4cff-b314-81145c5006f0"
}