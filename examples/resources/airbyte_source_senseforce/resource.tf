resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 10
    start_date   = "2017-01-25"
  }
  definition_id = "37ec3d2a-b419-48d2-afe5-e34c931e7a72"
  name          = "Toby McGlynn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "22c4d080-cde0-439d-95e8-c5778ddd1091"
}