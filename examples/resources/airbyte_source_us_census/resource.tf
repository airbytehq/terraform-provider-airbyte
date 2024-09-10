resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path   = "data/2018/acs"
  }
  definition_id = "d11c1280-d807-4cdd-8eb8-c75c4610938e"
  name          = "Benjamin Greenholt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "624d8c5c-5aa0-4b53-a8b2-6a568aa6dc34"
}