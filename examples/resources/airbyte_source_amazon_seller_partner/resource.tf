resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Seller"
    aws_environment        = "SANDBOX"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 5
    refresh_token          = "...my_refresh_token..."
    region                 = "MX"
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
        report_name = "GET_FLAT_FILE_ACTIONABLE_ORDER_DATA_SHIPPING"
        stream_name = "...my_stream_name..."
      },
    ]
  }
  definition_id = "b1d1d8bb-57bf-4001-9db3-cf074d627d20"
  name          = "Karla Adams III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bb26e6b-9f25-4aa9-b8c7-d4107048d9ff"
}