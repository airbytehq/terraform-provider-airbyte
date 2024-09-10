resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "0bb15469-57c1-4238-9870-2998d832c86d"
  name          = "Ms. Wilfred Larkin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f75b417c-7a0b-47eb-b790-1b079c0c4f41"
}