resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path   = "data/timeseries/healthins/sahie"
    source_type  = "us-census"
  }
  name         = "Brandon Rogahn"
  secret_id    = "...my_secret_id..."
  workspace_id = "2a00bef6-9e10-4015-b630-bda7afded84a"
}