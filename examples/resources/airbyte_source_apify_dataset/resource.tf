resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    clean       = true
    dataset_id  = "...my_dataset_id..."
    source_type = "apify-dataset"
    token       = "Personal API tokens"
  }
  name         = "Dale Ferry"
  secret_id    = "...my_secret_id..."
  workspace_id = "055b197c-d44e-42f5-ad82-d3513bb6f48b"
}