resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    backend_url           = "https://galaxyapi.senseforce.io"
    dataset_id            = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range           = 1
    start_date            = "2017-01-25"
  }
  definition_id = "39de93cb-1511-473e-a673-5cbedb9436af"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c04af849-0e4c-40a5-9d00-ad43af2baa4d"
}