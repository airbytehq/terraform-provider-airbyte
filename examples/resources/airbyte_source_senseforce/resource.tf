resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 180
    start_date   = "2017-01-25"
  }
  definition_id = "974cd0d5-39af-4231-9a6f-8898d74d7cd0"
  name          = "Lillie Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3c633751-f6c5-444c-a0e7-3f23dc46e62d"
}