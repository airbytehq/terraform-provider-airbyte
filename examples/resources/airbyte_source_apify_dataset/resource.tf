resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    clean       = true
    dataset_id  = "...my_dataset_id..."
    source_type = "apify-dataset"
  }
  name         = "Natasha Bogan"
  secret_id    = "...my_secret_id..."
  workspace_id = "deac646e-cb57-4340-9e3e-b1e5a2b12eb0"
}