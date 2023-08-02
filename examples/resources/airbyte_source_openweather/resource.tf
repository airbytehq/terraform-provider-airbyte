resource "airbyte_source_openweather" "my_source_openweather" {
    configuration = {
        appid = "...my_appid..."
        lang = "en"
        lat = "-21.249107858038816"
        lon = "-70.39482074115321"
        source_type = "openweather"
        units = "imperial"
    }
            name = "Penny Feest"
            workspace_id = "ecc5cb86-0f8c-4d58-8ba7-3810e4fe4447"
        }