resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    active_users_group_by_country = true
    api_key                       = "...my_api_key..."
    data_region                   = "Standard Server"
    request_time_range            = 8259
    secret_key                    = "...my_secret_key..."
    start_date                    = "2021-01-25T00:00:00Z"
  }
  definition_id = "b1aed4fb-ea82-4954-b53a-577cd7c2a238"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a45cdcfa-7473-46e2-9daa-761557fbd83d"
}