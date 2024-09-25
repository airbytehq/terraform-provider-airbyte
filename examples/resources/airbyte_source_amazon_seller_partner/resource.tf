resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Seller"
    aws_environment        = "SANDBOX"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 1
    refresh_token          = "...my_refresh_token..."
    region                 = "GB"
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
        report_name = "GET_MERCHANT_LISTINGS_ALL_DATA"
        stream_name = "...my_stream_name..."
      },
    ]
    wait_to_avoid_fatal_errors = false
  }
  definition_id = "6bcd5137-4519-445c-8336-0526ae8aa3c4"
  name          = "Craig Lang"
  secret_id     = "...my_secret_id..."
  workspace_id  = "13b86681-05e1-4180-bb2a-875a1ca190e9"
}