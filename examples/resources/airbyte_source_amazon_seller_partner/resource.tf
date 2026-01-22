resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    account_type           = "Vendor"
    app_id                 = "...my_app_id..."
    aws_environment        = "PRODUCTION"
    financial_events_step  = "1"
    lwa_app_id             = "...my_lwa_app_id..."
    lwa_client_secret      = "...my_lwa_client_secret..."
    period_in_days         = 10
    refresh_token          = "...my_refresh_token..."
    region                 = "TR"
    replication_end_date   = "2017-01-25T00:00:00Z"
    replication_start_date = "2017-01-25T00:00:00Z"
    report_options_list = [
      {
        options_list = [
          {
            option_name  = "...my_option_name..."
            option_value = "...my_option_value..."
          }
        ]
        report_name = "GET_FLAT_FILE_ALL_ORDERS_DATA_BY_LAST_UPDATE_GENERAL"
        stream_name = "...my_stream_name..."
      }
    ]
    wait_to_avoid_fatal_errors = false
  }
  definition_id = "d8c1cdd2-677c-4769-a67f-0d49c962b2c7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7495ec12-91c5-4b14-ab51-6fd77e9fda23"
}