resource "airbyte_source_newsdata_io" "my_source_newsdataio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    categories = [
      "{ \"see\": \"documentation\" }"
    ]
    countries = [
      "{ \"see\": \"documentation\" }"
    ]
    domains = [
      "{ \"see\": \"documentation\" }"
    ]
    end_date = "2022-09-13"
    languages = [
      "{ \"see\": \"documentation\" }"
    ]
    search_query = "...my_search_query..."
    start_date   = "2022-06-25T05:58:25.467Z"
  }
  definition_id = "e1142e93-ac8b-4628-91be-1c8fbb469e7a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f26610d-ee91-42f6-affb-c590d47e45a7"
}