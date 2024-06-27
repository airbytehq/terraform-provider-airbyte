resource "airbyte_source_sonar_cloud" "my_source_sonarcloud" {
  configuration = {
    component_keys = [
      "{ \"see\": \"documentation\" }",
    ]
    end_date     = "YYYY-MM-DD"
    organization = "airbyte"
    start_date   = "YYYY-MM-DD"
    user_token   = "...my_user_token..."
  }
  definition_id = "f0223ae8-22e5-4327-98cb-c0547dc93d7d"
  name          = "Katie Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "47813582-a6f5-437d-9dfc-7f458565e715"
}