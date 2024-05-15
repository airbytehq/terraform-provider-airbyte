resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 360
    start_date   = "2017-01-25"
  }
  definition_id = "fe701edb-d0d1-40cf-97eb-672b8aa55d63"
  name          = "Jonathon Denesik"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3da0917a-6151-4fac-be8e-c69babb33897"
}