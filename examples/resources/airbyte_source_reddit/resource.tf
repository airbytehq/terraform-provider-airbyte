resource "airbyte_source_reddit" "my_source_reddit" {
  configuration = {
    api_key         = "...my_api_key..."
    exact           = false
    include_over_18 = false
    limit           = 88.51
    query           = "...my_query..."
    start_date      = "2021-09-11T03:28:56.693Z"
    subreddits = [
      "{ \"see\": \"documentation\" }",
    ]
  }
  definition_id = "4a70c9cb-870e-4b98-850c-39e7450657bf"
  name          = "Dennis Rutherford"
  secret_id     = "...my_secret_id..."
  workspace_id  = "db2aae6c-20ac-49c1-9db3-e1c883c55acc"
}