resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "28ce1fbd-1e15-453f-aa9f-da6c4d928e92"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cbcd9ed5-c667-4714-989a-779bea742d01"
}