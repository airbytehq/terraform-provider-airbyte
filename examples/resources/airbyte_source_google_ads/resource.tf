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
      "UNKNOWN",
    ]
    end_date   = "2017-01-30"
    start_date = "2017-01-25"
  }
  definition_id = "93ebb36d-8aae-4a00-b0c4-c84b89e625ba"
  name          = "Johnnie Kiehn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "32dc31e1-b4b6-47e9-93bf-2defea2fd145"
}