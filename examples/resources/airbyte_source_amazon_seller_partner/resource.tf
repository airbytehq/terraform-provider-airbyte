resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Seller"
    aws_environment        = "PRODUCTION"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 5
    refresh_token          = "...my_refresh_token..."
    region                 = "AU"
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
        report_name = "GET_XML_BROWSE_TREE_DATA"
        stream_name = "...my_stream_name..."
      },
    ]
    wait_to_avoid_fatal_errors = false
  }
  definition_id = "e8959afe-ef69-4ead-9e5d-3690efc6e828"
  name          = "Walter Spinka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "db5daa9e-a927-4cae-bb29-c85e6b856286"
}