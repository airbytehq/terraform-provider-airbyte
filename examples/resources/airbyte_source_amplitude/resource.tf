resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    active_users_group_by_country = true
    additional_properties         = "{ \"see\": \"documentation\" }"
    api_key                       = "...my_api_key..."
    data_region                   = "Standard Server"
    request_time_range            = 24
    secret_key                    = "...my_secret_key..."
    start_date                    = "2021-01-25T00:00:00Z"
  }
  definition_id = "fa9f58c6-2d03-4237-aaa4-07d75e0c1396"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a45cdcfa-7473-46e2-9daa-761557fbd83d"
}