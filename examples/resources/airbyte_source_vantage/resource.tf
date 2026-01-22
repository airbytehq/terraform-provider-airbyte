resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "ec1a23b7-466d-4987-acf2-eae96eb456d0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cbcd9ed5-c667-4714-989a-779bea742d01"
}