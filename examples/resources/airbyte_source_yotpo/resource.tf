resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    app_key               = "...my_app_key..."
    email                 = "example@gmail.com"
    start_date            = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "18139f00-b1ba-4971-8f80-8387b617cfd8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "16330ccf-550e-4932-a4be-813b6ca6d890"
}