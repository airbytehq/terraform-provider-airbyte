resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 10
    start_date   = "2017-01-25"
  }
  name         = "Sherry Casper"
  secret_id    = "...my_secret_id..."
  workspace_id = "bd6b468c-85ec-421a-9ab5-67f13c77e51f"
}