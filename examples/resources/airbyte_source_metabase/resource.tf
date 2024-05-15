resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Jamil27"
  }
  definition_id = "160113c2-d3cb-45ea-a64b-86a42dbbb853"
  name          = "Lucas Goodwin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e6a18b0d-7900-43de-8da4-43bfaadd29a6"
}