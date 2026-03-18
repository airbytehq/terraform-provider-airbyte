resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2021-03-01T00:00:00Z"
    token                 = "...my_token..."
  }
  definition_id = "38f84314-fe6a-4257-97be-a8dcd942d693"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "541ae22f-d577-4a0e-934b-7779fd63f889"
}