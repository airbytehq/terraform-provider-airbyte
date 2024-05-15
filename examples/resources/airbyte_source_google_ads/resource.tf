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
    custom_queries_array = [
      {
        query      = "SELECT segments.ad_destination_type, campaign.advertising_channel_sub_type FROM campaign WHERE campaign.status = 'PAUSED'"
        table_name = "...my_table_name..."
      },
    ]
    customer_id = "6783948572,5839201945"
    customer_status_filter = [
      "SUSPENDED",
    ]
    end_date   = "2017-01-30"
    start_date = "2017-01-25"
  }
  definition_id = "c47ca706-1390-437c-beef-972df3c14a34"
  name          = "Emilio Senger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9ab276cb-ad00-4cae-a12c-4e65b57e54a2"
}