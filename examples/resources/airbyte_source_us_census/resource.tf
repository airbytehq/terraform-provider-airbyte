resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=MOVEDIN,GEOID1,GEOID2,MOVEDOUT,FULL1_NAME,FULL2_NAME,MOVEDNET&for=county:*"
    query_path   = "data/2019/cbp"
  }
  definition_id = "ee300f65-8219-4293-8e7b-1b4ec3d718f0"
  name          = "Miss Henrietta Sipes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a3001af4-d2a5-48a4-9f5f-d75cbebab8bd"
}