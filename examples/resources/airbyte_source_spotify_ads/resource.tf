resource "airbyte_source_spotify_ads" "my_source_spotifyads" {
  configuration = {
    ad_account_id         = "03561a07-cb0a-4354-b751-88512a6f4d79"
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    fields = [
      "IMPRESSIONS",
      "CLICKS",
      "SPEND",
      "CTR",
    ]
    refresh_token = "...my_refresh_token..."
    start_date    = "2024-01-01"
  }
  definition_id = "9e4b233b-8f4e-4366-a435-3b826d02048f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "55a37b9d-d7af-43b3-972e-ab588f9bfcdb"
}