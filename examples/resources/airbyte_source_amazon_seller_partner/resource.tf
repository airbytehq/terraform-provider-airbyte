resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Vendor"
    aws_environment        = "SANDBOX"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 7
    refresh_token          = "...my_refresh_token..."
    region                 = "IT"
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
        stream_name = "GET_MERCHANT_LISTINGS_DATA"
      },
    ]
  }
  definition_id = "df3d5ca9-6c63-4354-ae1d-23c3d11ff934"
  name          = "Irvin Berge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "56d8b0d9-0daf-4918-aab6-3a7b2e3879ec"
}