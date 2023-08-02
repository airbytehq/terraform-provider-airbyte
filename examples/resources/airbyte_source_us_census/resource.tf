resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=MOVEDIN,GEOID1,GEOID2,MOVEDOUT,FULL1_NAME,FULL2_NAME,MOVEDNET&for=county:*"
    query_path   = "data/timeseries/healthins/sahie"
    source_type  = "us-census"
  }
  name         = "Camille Upton"
  secret_id    = "...my_secretId..."
  workspace_id = "210d1f65-58c9-49c7-a2d2-bc0f94087d9c"
}