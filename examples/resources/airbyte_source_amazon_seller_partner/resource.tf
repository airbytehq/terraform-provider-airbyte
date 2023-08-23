resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    advanced_stream_options = "{\"GET_SOME_REPORT\": {\"custom\": \"true\"}}"
    auth_type               = "oauth2.0"
    aws_access_key          = "...my_aws_access_key..."
    aws_environment         = "SANDBOX"
    aws_secret_key          = "...my_aws_secret_key..."
    lwa_app_id              = "...my_lwa_app_id..."
    lwa_client_secret       = "...my_lwa_client_secret..."
    max_wait_seconds        = 1980
    period_in_days          = 6
    refresh_token           = "...my_refresh_token..."
    region                  = "SE"
    replication_end_date    = "2017-01-25T00:00:00Z"
    replication_start_date  = "2017-01-25T00:00:00Z"
    report_options          = "{\"GET_BRAND_ANALYTICS_SEARCH_TERMS_REPORT\": {\"reportPeriod\": \"WEEK\"}}"
    role_arn                = "...my_role_arn..."
    source_type             = "amazon-seller-partner"
  }
  name         = "Mr. Angela Volkman"
  secret_id    = "...my_secret_id..."
  workspace_id = "4cb0672d-1ad8-479e-ab96-65b85efbd02b"
}