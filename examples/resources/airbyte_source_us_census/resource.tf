resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=MOVEDIN,GEOID1,GEOID2,MOVEDOUT,FULL1_NAME,FULL2_NAME,MOVEDNET&for=county:*"
    query_path   = "data/2019/cbp"
  }
  definition_id = "e5de43c9-07f6-43cc-82bc-2f7f5dfb2c26"
  name          = "Kyle McKenzie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "915d3324-b481-49ff-b934-29d3165dd859"
}