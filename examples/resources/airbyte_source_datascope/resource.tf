resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "eb808ec8-c0a1-4f11-a71a-56d068f4b5e4"
  name          = "Douglas McGlynn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6433e1d5-1484-4aac-986d-055244c5465b"
}