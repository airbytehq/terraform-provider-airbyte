resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-12-23T20:48:01.588Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "9e4deda3-0dd3-4cfb-8aa2-fad058413083"
  name          = "Krystal Dietrich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de43c907-f63c-4c02-bc2f-7f5dfb2c26b4"
}