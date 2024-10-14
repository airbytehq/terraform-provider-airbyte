resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "1b86db68-e6fd-41f2-aaf4-a216a5175319"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6eacf260-b477-41b6-8093-1c461d8bd3e7"
}