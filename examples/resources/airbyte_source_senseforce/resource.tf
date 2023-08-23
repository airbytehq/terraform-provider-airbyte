resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 360
    source_type  = "senseforce"
    start_date   = "2017-01-25"
  }
  name         = "Nichole Treutel"
  secret_id    = "...my_secret_id..."
  workspace_id = "ada29ca7-9181-4c95-a716-63c530b56651"
}