resource "airbyte_source_stockdata" "my_source_stockdata" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    filter_entities       = false
    industries = [
      "{ \"see\": \"documentation\" }"
    ]
    start_date = "2020-03-12T00:18:35.880Z"
    symbols = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "2285839c-63a1-44fe-a042-843a2638ff46"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1c13c3fa-3cb8-4eaf-9c13-a41910c86205"
}