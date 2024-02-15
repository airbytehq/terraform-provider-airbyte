resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Vendor"
    aws_environment        = "PRODUCTION"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 7
    refresh_token          = "...my_refresh_token..."
    region                 = "UK"
    replication_end_date   = "2017-01-25T00:00:00Z"
    replication_start_date = "2017-01-25T00:00:00Z"
    report_options_list = [
      {
        options_list = [
          {
            option_name  = "...my_option_name..."
            option_value = "...my_option_value..."
          },
        ]
        stream_name = "GET_XML_ALL_ORDERS_DATA_BY_ORDER_DATE_GENERAL"
      },
    ]
  }
  definition_id = "a73356f3-9bea-45e2-889f-0e8905c8543b"
  name          = "Justin Luettgen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac7dcada-d293-48da-9765-e7880f00a30d"
}