resource "airbyte_source_mercado_ads" "my_source_mercadoads" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_refresh_token  = "...my_client_refresh_token..."
    client_secret         = "...my_client_secret..."
    end_date              = "2020-07-08"
    lookback_days         = 6.62
    start_date            = "2022-07-26"
  }
  definition_id = "770b2687-0287-4f2a-bce8-6370a9f3c4fe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "734e4361-067e-491a-8d1f-205be32a51b1"
}