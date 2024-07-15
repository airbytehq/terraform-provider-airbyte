resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    api_key      = "...my_api_key..."
    query_params = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path   = "data/timeseries/healthins/sahie"
  }
  definition_id = "907f63cc-02bc-42f7-b5df-b2c26b498691"
  name          = "Christie Emard"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4b4819ff-3934-429d-b165-dd8595e9c61e"
}