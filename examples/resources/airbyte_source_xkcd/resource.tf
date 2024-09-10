resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    comic_number = "...my_comic_number..."
  }
  definition_id = "5b511296-6924-4cde-8b86-7ddcc8cc1e1e"
  name          = "Dana Hickle"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c4c80fc9-04e1-4374-8425-fe8edba3050b"
}