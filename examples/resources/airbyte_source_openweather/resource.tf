resource "airbyte_source_openweather" "my_source_openweather" {
  configuration = {
    appid       = "...my_appid..."
    lang        = "zh_tw"
    lat         = "45.7603"
    lon         = "4.835659"
    source_type = "openweather"
    units       = "metric"
  }
  name         = "Sylvester Krajcik"
  secret_id    = "...my_secret_id..."
  workspace_id = "f616ea5c-7164-4193-8b90-f2e09d19d2fc"
}