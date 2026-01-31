resource "airbyte_source_coingecko_coins" "my_source_coingeckocoins" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    coin_id               = "...my_coin_id..."
    days                  = "1"
    end_date              = "2022-06-02"
    start_date            = "2021-05-10"
    vs_currency           = "...my_vs_currency..."
  }
  definition_id = "d33b3a56-3c24-45e0-9811-d789944a52d3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "100ffefc-7165-4172-a963-245083ec5486"
}