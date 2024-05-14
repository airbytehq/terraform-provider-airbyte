resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Vendor"
    aws_environment        = "SANDBOX"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 2
    refresh_token          = "...my_refresh_token..."
    region                 = "FR"
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
        stream_name = "GET_FBA_MYI_UNSUPPRESSED_INVENTORY_DATA"
      },
    ]
  }
  definition_id = "4517930e-d8d4-43c0-9abb-a6ef9fc3c374"
  name          = "Melba Schumm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e57aa67-3d28-4259-b0c2-20e39e10d6ef"
}