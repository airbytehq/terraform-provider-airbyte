resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "King.Jakubowski@yahoo.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "e0588102-2b8a-4d45-9c07-88754523f36d"
  name          = "Mr. Garry Hermann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "890f3e99-2c2a-43f4-88fc-026c7cc4eafd"
}