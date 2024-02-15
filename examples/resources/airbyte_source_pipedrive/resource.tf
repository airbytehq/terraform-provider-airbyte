resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "be7bbe4e-8da5-4f86-bba5-cf8db48a2cc4"
  name          = "Carrie Kulas Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0c3ecc15-58e9-483f-b3bb-c2f8e75b95ee"
}