resource "airbyte_source_poplar" "my_source_poplar" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2022-04-18T20:53:52.720Z"
  }
  definition_id = "762e3001-6edb-4979-8bc5-5c4d9f862232"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5e8c4ce-fc79-41ce-a312-1e9b3d367285"
}