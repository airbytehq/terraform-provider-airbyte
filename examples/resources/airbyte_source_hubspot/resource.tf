resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      o_auth = {
        client_id     = "123456789000"
        client_secret = "secret"
        refresh_token = "refresh_token"
      }
    }
    enable_experimental_streams = true
    start_date                  = "2017-01-25T00:00:00Z"
  }
  definition_id = "e287b752-65fd-4ff2-9eb8-cbf2674a9203"
  name          = "Jeannette Bergstrom"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fcc526af-10da-4401-bb0f-c52730b39994"
}