resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  name         = "Allan Feeney"
  secret_id    = "...my_secret_id..."
  workspace_id = "69be0c12-ece5-49b9-bbae-f8e47490588d"
}