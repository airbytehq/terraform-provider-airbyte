resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 360
    start_date   = "2017-01-25"
  }
  definition_id = "23dc46e6-2d66-4e72-b78d-5db92d16e1dc"
  name          = "Paul Hyatt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1f7a171f-7c1d-48bf-9db0-9b9a903f60eb"
}