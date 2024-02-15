resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "6bf78b3b-7ded-4e54-bfc7-c1cb53c35168"
  name          = "Carroll Skiles"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b3d74013-9dc2-4cf2-8b41-6442d85f5b63"
}