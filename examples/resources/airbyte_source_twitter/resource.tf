resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2021-02-28T18:28:03.001Z"
    query      = "...my_query..."
    start_date = "2022-09-02T14:26:59.436Z"
  }
  name         = "Ernesto Pacocha"
  secret_id    = "...my_secret_id..."
  workspace_id = "e05b1e50-c144-468d-a31c-dd98f81edeee"
}