resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path   = "data/timeseries/healthins/sahie"
  }
  definition_id = "b9f83345-26ea-4e71-ab75-9d7dd0bf2f57"
  name          = "Gloria McCullough"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8fbbe922-6a95-44ff-b93d-12e392ce90b9"
}