resource "airbyte_source_segment" "my_source_segment" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    region                = "...my_region..."
    start_date            = "2022-11-14T08:31:01.843Z"
  }
  definition_id = "44d4bfbf-aa80-4039-843e-7ddfeae40232"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "27ef5c40-7227-4409-b731-b674609b3dd3"
}