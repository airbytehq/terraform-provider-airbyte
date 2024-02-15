resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 360
    start_date   = "2017-01-25"
  }
  definition_id = "be1d2ecd-0150-41d5-af6c-56d3cf89e692"
  name          = "Miss Pat Terry"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6ecf050-91d9-408d-9d00-175338429733"
}