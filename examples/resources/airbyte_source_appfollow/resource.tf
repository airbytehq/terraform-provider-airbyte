resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "84cac7dc-adad-4293-8da5-765e7880f00a"
  name          = "Brenda Stanton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f9a90fa7-f8f4-441b-98df-c559a0bee1c5"
}