resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "73b7e8dc-371e-4cbe-a105-11b439ed171c"
  name          = "Carroll Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b4783ac2-32bf-4a41-880b-23345c949a95"
}