resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "180fb2a8-75a1-4ca1-90e9-5bd1182a17eb"
  name          = "Kayla Weimann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "defa7335-6f39-4bea-9e20-89f0e8905c85"
}