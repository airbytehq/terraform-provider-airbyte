resource "airbyte_source_openweather" "my_source_openweather" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    appid                 = "...my_appid..."
    lang                  = "en"
    lat                   = "45.7603"
    lon                   = "4.835659"
    only_current          = true
    units                 = "standard"
  }
  definition_id = "1bd5c4ce-4dbf-469a-b3b5-ebef5ab8806d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7db955e3-04e1-4a4e-8a18-a248e82427c5"
}