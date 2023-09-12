resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    advanced_stream_options = "{\"GET_SALES_AND_TRAFFIC_REPORT\": {\"availability_sla_days\": 3}}"
    auth_type               = "oauth2.0"
    aws_access_key          = "...my_aws_access_key..."
    aws_environment         = "PRODUCTION"
    aws_secret_key          = "...my_aws_secret_key..."
    lwa_app_id              = "...my_lwa_app_id..."
    lwa_client_secret       = "...my_lwa_client_secret..."
    max_wait_seconds        = 1980
    period_in_days          = 5
    refresh_token           = "...my_refresh_token..."
    region                  = "SA"
    replication_end_date    = "2017-01-25T00:00:00Z"
    replication_start_date  = "2017-01-25T00:00:00Z"
    report_options          = "{\"GET_SOME_REPORT\": {\"custom\": \"true\"}}"
    role_arn                = "...my_role_arn..."
    source_type             = "amazon-seller-partner"
  }
  name         = "Phyllis Quitzon"
  secret_id    = "...my_secret_id..."
  workspace_id = "5c537c64-54ef-4b0b-b489-6c3ca5acfbe2"
}