resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "725c6d5a-5da3-4503-9f4e-4098bb8c2a23"
  name          = "Mr. Travis Roob"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4621866c-f518-4dbd-9ebe-e014e07eadc6"
}