resource "airbyte_source_opinion_stage" "my_source_opinionstage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "0a510cc4-715e-4741-b480-baeb5b5b5a6e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bdce244c-07da-4316-9bb0-5ced3c4da306"
}