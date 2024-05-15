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
      "ENABLED",
    ]
    end_date   = "2017-01-30"
    start_date = "2017-01-25"
  }
  definition_id = "2c84cd8b-c607-46e7-94fb-f0cfd3aed54e"
  name          = "Eugene Gislason PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e80e3db9-0502-4015-92de-4b8db33d2b3a"
}