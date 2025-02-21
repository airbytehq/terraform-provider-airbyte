resource "airbyte_source_pingdom" "my_source_pingdom" {
  configuration = {
    api_key    = "...my_api_key..."
    probes     = "probe1"
    resolution = "day"
    start_date = "2020-11-15T15:01:45.230Z"
  }
  definition_id = "f670d5e0-b609-425a-ae7d-cb5dfcb8d811"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ae6b211-29a3-44fb-9b57-fe99e65e946c"
}