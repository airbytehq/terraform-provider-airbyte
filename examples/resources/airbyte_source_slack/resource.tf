resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    channel_filter = [
      "..."
    ]
    channel_messages_window_size = 30
    credentials = {
      sign_in_via_slack_o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    include_private_channels = false
    join_channels            = true
    lookback_window          = 7
    num_workers              = 2
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "c2281cee-86f9-4a86-bb48-d23286b4c7bd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0473aa4-957d-44db-ac2f-386282ba46e7"
}