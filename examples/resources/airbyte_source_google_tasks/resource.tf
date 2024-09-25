resource "airbyte_source_google_tasks" "my_source_googletasks" {
  configuration = {
    api_key       = "...my_api_key..."
    records_limit = "...my_records_limit..."
    start_date    = "2022-04-01T08:43:44.262Z"
  }
  definition_id = "e49a8fc7-f8e2-4467-a645-cfb2449eef87"
  name          = "Gail Waelchi"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b875ea1f-a63f-46c0-bac1-403cfd915cc5"
}