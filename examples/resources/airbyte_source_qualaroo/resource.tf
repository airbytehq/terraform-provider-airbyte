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
  name         = "Grace Ankunding"
  secret_id    = "...my_secret_id..."
  workspace_id = "fbba5cce-ff5c-4b01-be51-e528a45ac82b"
}