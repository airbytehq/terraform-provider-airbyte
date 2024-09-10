resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-09-11T05:44:36.588Z"
  }
  definition_id = "6c36bb73-37bf-40be-8a93-a8ae78e1e537"
  name          = "Julius Kemmer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6d5dc1e2-50f8-40fb-8595-c3777bccfe70"
}