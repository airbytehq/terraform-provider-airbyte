resource "airbyte_source_senseforce" "my_source_senseforce" {
  configuration = {
    access_token = "...my_access_token..."
    backend_url  = "https://galaxyapi.senseforce.io"
    dataset_id   = "8f418098-ca28-4df5-9498-0df9fe78eda7"
    slice_range  = 1
    start_date   = "2017-01-25"
  }
  definition_id = "06fc1f7a-171f-47c1-98bf-ddb09b9a903f"
  name          = "Brenda Toy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a54b7cf5-33c5-45d6-8a56-e1f7b10c6dd1"
}