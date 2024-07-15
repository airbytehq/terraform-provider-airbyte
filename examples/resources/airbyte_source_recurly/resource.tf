resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "fd90aff6-6049-47cb-974a-7d8001cbe4b7"
  name          = "Carlton Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7b021550-aada-44df-81cf-56ee294adbc5"
}