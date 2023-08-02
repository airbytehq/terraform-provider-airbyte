resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 360
    source_type  = "senseforce"
    start_date   = "2017-01-25"
  }
  name         = "Kenny Kessler DDS"
  secret_id    = "...my_secretId..."
  workspace_id = "57d1fedc-2050-4d38-9c3c-e185472f9ee6"
}