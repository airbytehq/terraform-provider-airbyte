resource "airbyte_source_cimis" "my_source_cimis" {
  configuration = {
    api_key = "...my_api_key..."
    daily_data_items = [
      "{ \"see\": \"documentation\" }",
    ]
    end_date = "2022-11-12T10:35:00.527Z"
    hourly_data_items = [
      "{ \"see\": \"documentation\" }",
    ]
    start_date = "2022-02-11T00:33:21.405Z"
    targets = [
      "{ \"see\": \"documentation\" }",
    ]
    targets_type    = "California zip codes"
    unit_of_measure = "E"
  }
  definition_id = "27fd51b6-6ec3-445b-9c1b-ae74726a8cd9"
  name          = "Floyd Orn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "47afda11-e10d-4002-a1c7-3f9ba1e39a63"
}