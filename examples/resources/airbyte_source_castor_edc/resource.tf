resource "airbyte_source_castor_edc" "my_source_castoredc" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2022-10-14T22:30:57.441Z"
    url_region    = "uk"
  }
  definition_id = "b30da90d-9653-4d87-afc1-6d22c5cb92e5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "88fb0d18-d32a-42d8-b53b-8ffbf716c315"
}