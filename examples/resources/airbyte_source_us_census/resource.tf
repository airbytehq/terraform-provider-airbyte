resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path   = "data/timeseries/healthins/sahie"
  }
  definition_id = "02b7e6dd-49df-45c3-992a-5dd7ddbd797d"
  name          = "Sophie Prohaska"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fd682a6-77b1-4b8d-bbae-b9b5c2e2ee8b"
}