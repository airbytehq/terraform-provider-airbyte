resource "airbyte_source_cimis" "my_source_cimis" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    daily_data_items = [
      "{ \"see\": \"documentation\" }"
    ]
    end_date = "2020-09-27T05:27:28.289Z"
    hourly_data_items = [
      "{ \"see\": \"documentation\" }"
    ]
    start_date = "2021-04-23T12:14:10.894Z"
    targets = [
      "{ \"see\": \"documentation\" }"
    ]
    targets_type    = "California zip codes"
    unit_of_measure = "E"
  }
  definition_id = "58ad382d-b84b-4901-9270-1ea4e0d67c63"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a77ac9a-00d4-4975-8d98-cec7c9a9a112"
}