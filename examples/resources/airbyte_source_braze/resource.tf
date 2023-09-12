resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "braze"
    start_date  = "2022-09-06"
    url         = "...my_url..."
  }
  name         = "Rosie Glover"
  secret_id    = "...my_secret_id..."
  workspace_id = "efc5fde1-0a0c-4e21-a9e5-10019c6dc5e3"
}