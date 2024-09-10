resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 360
    start_date   = "2017-01-25"
  }
  definition_id = "91c615d1-2804-40ba-83eb-3c0afcc3c8fa"
  name          = "Kellie Olson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc8e3e7d-b5a3-4e44-afc1-e0fa91f7ef5f"
}