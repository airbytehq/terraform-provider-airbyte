resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "169fb30d-b2ef-4b21-af2b-c48bf07f2e77"
  name          = "Martha Emmerich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "646fa9b2-db75-432b-a8cb-785b8d4ad9bb"
}