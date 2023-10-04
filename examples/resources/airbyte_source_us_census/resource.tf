resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=MOVEDIN,GEOID1,GEOID2,MOVEDOUT,FULL1_NAME,FULL2_NAME,MOVEDNET&for=county:*"
    query_path   = "data/timeseries/healthins/sahie"
  }
  name         = "Eleanor Mraz"
  secret_id    = "...my_secret_id..."
  workspace_id = "bc8e2c7d-0de0-4f8a-ab57-adde20e75111"
}