resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "0259c6b1-3998-4d3f-8543-0ae066d4a91b"
  name          = "Rickey Satterfield"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba892b6d-5805-4ab7-b933-1a5ddafad6ab"
}