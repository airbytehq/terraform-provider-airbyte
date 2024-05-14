resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path   = "data/timeseries/healthins/sahie"
  }
  definition_id = "1a0d51fb-8be0-4416-8b49-da06c239e7af"
  name          = "Lynne Paucek"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2a5392d-7458-4890-8090-47267ce86a32"
}