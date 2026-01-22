resource "airbyte_source_brevo" "my_source_brevo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-07-31T08:25:33.562Z"
  }
  definition_id = "c6f78ebe-bdc0-473f-8ce8-d4b01bcd2208"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b1edff7f-a272-48f5-a008-77388d6dc78b"
}