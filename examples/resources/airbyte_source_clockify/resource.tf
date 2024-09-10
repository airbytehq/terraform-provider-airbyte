resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "abf17c2d-50cb-46e6-bf33-2bdf145775fc"
  name          = "Miss Ira Lesch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "466bf78b-3b7d-4ede-947f-c7c1cb53c351"
}