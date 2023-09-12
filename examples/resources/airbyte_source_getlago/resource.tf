resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "getlago"
  }
  name         = "Irving Rohan"
  secret_id    = "...my_secret_id..."
  workspace_id = "0df448a4-7f93-490c-9888-0983dabf9ef3"
}