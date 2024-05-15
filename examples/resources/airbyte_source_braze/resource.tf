resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-03-03"
    url        = "...my_url..."
  }
  definition_id = "a51fb73f-472f-42e8-bbfe-18227a33308d"
  name          = "Theodore Haag"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49be6259-9f17-4b5c-a1c8-d2f7dd6ee9c7"
}