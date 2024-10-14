resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "db43b1ec-0312-415d-8af9-4aee6e85efa8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6432cd85-66e2-44fb-a829-fd30f6331eb3"
}