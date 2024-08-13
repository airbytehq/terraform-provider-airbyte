resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "a0625cbf-f5b3-41f2-b930-4d3ebf32902d"
  name          = "Hector Breitenberg Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "be882924-ee80-4aa2-980d-84713ebef014"
}