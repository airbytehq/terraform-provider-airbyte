resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "c9c1a8da-b7e7-43a5-9718-14e4dc1f633a"
  name          = "Salvatore Hermann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "542d517f-c88b-4c49-98d7-5efedea337d5"
}