resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=MOVEDIN,GEOID1,GEOID2,MOVEDOUT,FULL1_NAME,FULL2_NAME,MOVEDNET&for=county:*"
    query_path   = "data/2018/acs"
  }
  definition_id = "6915d332-4b48-419f-b393-429d3165dd85"
  name          = "Vernon Tillman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "61e20db5-f4bb-411c-a0c3-a7ba336248be"
}