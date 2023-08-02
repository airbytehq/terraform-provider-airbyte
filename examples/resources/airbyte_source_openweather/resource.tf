resource "airbyte_source_openweather" "my_source_openweather" {
  configuration = {
    appid       = "...my_appid..."
    lang        = "fr"
    lat         = "-21.249107858038816"
    lon         = "4.835659"
    source_type = "openweather"
    units       = "standard"
  }
  name         = "Alex Zulauf"
  secret_id    = "...my_secretId..."
  workspace_id = "447297cd-3b1d-4d3b-bce2-47b7684eff50"
}