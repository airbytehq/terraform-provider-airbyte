resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "ba892b6d-5805-4ab7-b933-1a5ddafad6ab"
  name          = "Eloise Schowalter"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aacd8d2a-bfdc-40f3-b811-ddad7d79aa2a"
}