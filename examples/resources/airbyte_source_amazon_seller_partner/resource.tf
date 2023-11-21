resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type            = "Seller"
    advanced_stream_options = "{\"GET_SALES_AND_TRAFFIC_REPORT\": {\"availability_sla_days\": 3}}"
    aws_environment         = "SANDBOX"
    lwa_app_id              = "...my_lwa_app_id..."
    lwa_client_secret       = "...my_lwa_client_secret..."
    period_in_days          = 2
    refresh_token           = "...my_refresh_token..."
    region                  = "AE"
    replication_end_date    = "2017-01-25T00:00:00Z"
    replication_start_date  = "2017-01-25T00:00:00Z"
    report_options          = "{\"GET_BRAND_ANALYTICS_SEARCH_TERMS_REPORT\": {\"reportPeriod\": \"WEEK\"}}"
  }
  definition_id = "69bb26e6-b9f2-45aa-9f8c-7d4107048d9f"
  name          = "Caleb Legros"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9afeef69-ead1-4e5d-b690-efc6e828b1d2"
}