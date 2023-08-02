resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key     = "...my_api_key..."
    begin_time  = "2021-12-01T00:00:00"
    end_time    = "2021-12-01T00:00:00"
    source_type = "recurly"
  }
  name         = "Darrin Gislason Jr."
  secret_id    = "...my_secretId..."
  workspace_id = "aa1bc74b-86ce-4cc7-8f77-b4848bd6a6f0"
}