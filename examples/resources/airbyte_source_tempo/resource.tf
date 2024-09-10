resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "46ac11eb-0243-4724-82fa-90b3fc58aed9"
  name          = "Kristen Erdman IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de960972-5c6d-45a5-9a35-039f4e4098bb"
}