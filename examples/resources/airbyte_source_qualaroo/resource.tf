resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key         = "...my_key..."
    source_type = "qualaroo"
    start_date  = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  name         = "Geoffrey Kling"
  secret_id    = "...my_secretId..."
  workspace_id = "021a5204-6b64-4e99-bb0e-67e094fdfed5"
}