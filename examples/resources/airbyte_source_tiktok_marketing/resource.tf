resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
    configuration = {
        attribution_window = 1
        credentials =     {
                access_token = "...my_access_token..."
                advertiser_id = "...my_advertiser_id..."
                app_id = "...my_app_id..."
                auth_type = "oauth2.0"
                secret = "...my_secret..."
            }
        end_date = "2022-09-30"
        source_type = "tiktok-marketing"
        start_date = "2021-04-07"
    }
            name = "Cecil Wintheiser"
            workspace_id = "b20fe5d9-11cb-4fe7-89ca-f45a27f69e2c"
        }