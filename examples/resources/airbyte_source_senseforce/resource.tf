resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    start_date   = "2017-01-25"
  }
  definition_id = "dc6f53d2-53db-48b1-a39d-437be8f4cf79"
  name          = "Marta Ondricka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e012beba-22c9-4964-9ef6-30f5d8739c0e"
}