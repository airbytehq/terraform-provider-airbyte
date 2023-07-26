resource "airbyte_source_pinterest" "my_source_pinterest" {
  configuration = {
    credentials = {
      access_token = "...my_access_token..."
      auth_method  = "access_token"
    }
    source_type = "pinterest"
    start_date  = "2022-07-28"
    status = [
      "ACTIVE",
    ]
  }
  name         = "Myra Bernier"
  workspace_id = "1f29042f-569b-47af-b0ea-2216cbe071bc"
}