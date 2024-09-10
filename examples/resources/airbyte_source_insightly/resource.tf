resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "9e7c8aee-eb09-4ffd-b753-fe46a1403ba1"
  name          = "Mr. Gilberto Lebsack"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfb42284-9b58-4575-9fd7-9d74aa20ea69"
}