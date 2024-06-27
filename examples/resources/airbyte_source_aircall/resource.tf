resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "c1931372-2140-427e-a71b-638bd648d548"
  name          = "Lucille O'Conner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b93d4bbd-e9f2-4bb8-8cd3-fe4ad282938c"
}