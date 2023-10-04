resource "airbyte_source_amazon_seller_partner" "my_source_amazonsellerpartner" {
  configuration = {
    advanced_stream_options = "{\"GET_SOME_REPORT\": {\"custom\": \"true\"}}"
    aws_access_key          = "...my_aws_access_key..."
    aws_environment         = "SANDBOX"
    aws_secret_key          = "...my_aws_secret_key..."
    lwa_app_id              = "...my_lwa_app_id..."
    lwa_client_secret       = "...my_lwa_client_secret..."
    max_wait_seconds        = 500
    period_in_days          = 1
    refresh_token           = "...my_refresh_token..."
    region                  = "IT"
    replication_end_date    = "2017-01-25T00:00:00Z"
    replication_start_date  = "2017-01-25T00:00:00Z"
    report_options          = "{\"GET_SOME_REPORT\": {\"custom\": \"true\"}}"
    role_arn                = "...my_role_arn..."
  }
  name         = "Linda Kutch"
  secret_id    = "...my_secret_id..."
  workspace_id = "58c67348-eaa4-4356-b389-ad49dbc4fabb"
}