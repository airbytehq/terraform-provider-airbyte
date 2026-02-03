resource "airbyte_source_financial_modelling" "my_source_financialmodelling" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    exchange              = "...my_exchange..."
    marketcaplowerthan    = "...my_marketcaplowerthan..."
    marketcapmorethan     = "...my_marketcapmorethan..."
    start_date            = "2022-04-29T19:20:14.065Z"
    time_frame            = "5min"
  }
  definition_id = "2c16deb0-0816-4c39-947a-5080927f4041"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "55b64f40-61ff-425b-8ba7-ce81bfdd40f5"
}