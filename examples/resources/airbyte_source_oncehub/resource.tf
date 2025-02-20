resource "airbyte_source_oncehub" "my_source_oncehub" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-10-15T02:57:32.059Z"
  }
  definition_id = "99a855fa-ae59-4c44-919b-22f8f6cfcfcf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a84854a6-ad04-4a87-bf5c-27bda24e70dc"
}