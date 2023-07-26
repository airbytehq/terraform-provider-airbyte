resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 3
    source_type  = "senseforce"
    start_date   = "2017-01-25"
  }
  name         = "Dr. Emily Schumm DDS"
  workspace_id = "b0a0003e-b22d-49b3-a70d-94faa741c57d"
}