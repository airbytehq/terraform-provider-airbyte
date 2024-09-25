resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 7
    requests_per_minute     = 3
    start_date              = "2020-12-01T00:00:00Z"
  }
  definition_id = "53a69509-35ad-4536-8500-4734e30b46b9"
  name          = "Bobbie Toy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "758ac092-2711-49b9-9b60-c98bb7037ab5"
}