resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key     = "...my_api_key..."
    begin_time  = "2021-12-01T00:00:00"
    end_time    = "2021-12-01T00:00:00"
    source_type = "recurly"
  }
  name         = "Susie Donnelly"
  secret_id    = "...my_secret_id..."
  workspace_id = "ed0c5670-ef42-4bd3-89f1-cc503f6c39bc"
}