resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "0f0c4c84-b89e-4625-bae8-76a32dc31e1b"
  name          = "Yvette Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "953bf2de-fea2-4fd1-85f4-8d3631398553"
}