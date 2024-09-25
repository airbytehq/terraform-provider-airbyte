resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "8990fea4-c7f8-425f-b877-6c87f290dbb5"
  name          = "Carl Bins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "33e77c5c-900b-46e5-95bf-b7e7038464bf"
}