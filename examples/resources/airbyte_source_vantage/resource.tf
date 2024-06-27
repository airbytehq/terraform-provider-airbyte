resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "45dfad93-24f6-4ab9-b833-4526eae71eb7"
  name          = "Sheryl Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0bf2f57-2195-478f-bbe9-226a954fff93"
}