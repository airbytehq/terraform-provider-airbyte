resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Ibrahim74@gmail.com"
    source_type  = "yotpo"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  name         = "Clark McGlynn"
  secret_id    = "...my_secret_id..."
  workspace_id = "61aae5eb-5f0c-4492-b574-4d08a2267aae"
}