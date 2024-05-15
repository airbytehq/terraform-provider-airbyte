resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "d544a65a-7d2b-4460-9d4e-c6467c968cce"
  name          = "Nathan Emmerich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d8a35db3-2f90-40f8-8fe7-378a58770229"
}