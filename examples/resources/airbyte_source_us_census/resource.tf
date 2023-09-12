resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=MOVEDIN,GEOID1,GEOID2,MOVEDOUT,FULL1_NAME,FULL2_NAME,MOVEDNET&for=county:*"
    query_path   = "data/2018/acs"
    source_type  = "us-census"
  }
  name         = "Ginger Gislason"
  secret_id    = "...my_secret_id..."
  workspace_id = "54a85466-597c-4502-b3c1-471d51aaa6dd"
}