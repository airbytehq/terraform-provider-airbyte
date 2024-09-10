resource "airbyte_source_airbyte" "my_source_airbyte" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2022-02-13T07:54:38.533Z"
  }
  definition_id = "1cc19313-7221-4402-bee7-1b638bd648d5"
  name          = "Nina Boyle"
  secret_id     = "...my_secret_id..."
  workspace_id  = "feb93d4b-bde9-4f2b-b80c-d3fe4ad28293"
}