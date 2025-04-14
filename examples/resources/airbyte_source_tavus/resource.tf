resource "airbyte_source_tavus" "my_source_tavus" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-09-27T23:06:52.617Z"
  }
  definition_id = "21a34875-5028-4c48-9695-0b9ae09df646"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb0d6bf7-033e-4187-b8fc-9367f468a034"
}