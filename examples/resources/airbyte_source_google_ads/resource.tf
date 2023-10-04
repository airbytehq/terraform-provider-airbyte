resource "airbyte_source_google_ads" "my_source_googleads" {
  configuration = {
    conversion_window_days = 14
    credentials = {
      access_token    = "...my_access_token..."
      client_id       = "...my_client_id..."
      client_secret   = "...my_client_secret..."
      developer_token = "...my_developer_token..."
      refresh_token   = "...my_refresh_token..."
    }
    custom_queries = [
      {
        query      = "SELECT segments.ad_destination_type, campaign.advertising_channel_sub_type FROM campaign WHERE campaign.status = 'PAUSED'"
        table_name = "...my_table_name..."
      },
    ]
    customer_id       = "6783948572,5839201945"
    end_date          = "2017-01-30"
    login_customer_id = "7349206847"
    start_date        = "2017-01-25"
  }
  name         = "Leland Will"
  secret_id    = "...my_secret_id..."
  workspace_id = "64874e62-c58d-4879-afd4-8887cb19c48e"
}