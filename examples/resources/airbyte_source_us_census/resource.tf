resource "airbyte_source_us_census" "my_source_uscensus" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    query_params          = "get=NAME,NAICS2017_LABEL,LFO_LABEL,EMPSZES_LABEL,ESTAB,PAYANN,PAYQTR1,EMP&for=us:*&NAICS2017=72&LFO=001&EMPSZES=001"
    query_path            = "data/2019/cbp"
  }
  definition_id = "c4cfaeda-c757-489a-8aba-859fb08b6970"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8318b0c6-96a9-4c05-839e-8697009bbcd8"
}