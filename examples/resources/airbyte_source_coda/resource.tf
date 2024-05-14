resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "098446f9-835e-4642-ad15-b828621a877d"
  name          = "Alyssa Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cdd80ba5-ff53-4c6f-810c-a67a827c3d34"
}