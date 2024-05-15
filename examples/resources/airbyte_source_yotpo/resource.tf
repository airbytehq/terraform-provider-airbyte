resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Deshaun_Watsica@hotmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "b4c1bcaf-66c1-4286-9f98-4d613828542b"
  name          = "Philip Kessler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "58facd17-71a1-46ff-b1f0-4aeebc306c4f"
}