resource "airbyte_source_slack" "my_source_slack" {
  configuration = {
    channel_filter = [
      "..."
    ]
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
      sign_in_via_slack_o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    include_private_channels = false
    join_channels            = false
    lookback_window          = 7
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "0e40c94d-0533-49a9-8fb8-ec1935c15487"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0473aa4-957d-44db-ac2f-386282ba46e7"
}