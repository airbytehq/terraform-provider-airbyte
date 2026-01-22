resource "airbyte_source_missive" "my_source_missive" {
  configuration = {
    api_key    = "...my_api_key..."
    kind       = "organization"
    limit      = "...my_limit..."
    start_date = "2021-02-23T08:47:55.637Z"
  }
  definition_id = "2830fb41-0987-48c6-ad54-a11b427d43bb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ed3f802e-e89d-478b-aee3-84eeb11f349c"
}