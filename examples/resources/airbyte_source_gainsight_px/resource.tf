resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "c6869005-1741-4425-a4d3-8a30ea56cdfa"
  name          = "Courtney Witting"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6225b4ba-e611-4122-913e-87b490ecc6bf"
}