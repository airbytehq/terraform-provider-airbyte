resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "494dcfae-a550-4038-81e9-f446900c8feb"
  name          = "Kelly Rath"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfea08ab-dda3-428f-ac37-3e06663420a6"
}