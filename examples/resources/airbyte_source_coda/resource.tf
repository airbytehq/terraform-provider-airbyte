resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "b4d44755-b910-4e5c-999e-89cbd0e8f2a3"
  name          = "Dr. Alexandra Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec883da2-fecd-42ca-b29e-0bc6002c3cc1"
}