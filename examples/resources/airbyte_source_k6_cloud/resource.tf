resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "a766a686-faa5-412d-8044-b05c5b711236"
  name          = "Elsa Cole"
  secret_id     = "...my_secret_id..."
  workspace_id  = "47b86cde-c1a2-4bc2-b81e-45e3ceb6c910"
}