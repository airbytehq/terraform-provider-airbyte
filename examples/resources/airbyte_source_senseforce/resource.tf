resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 10
    source_type  = "senseforce"
    start_date   = "2017-01-25"
  }
  name         = "Rodolfo Langworth"
  secret_id    = "...my_secret_id..."
  workspace_id = "e50c1666-1a1d-4913-aa7e-8d53213f3f65"
}