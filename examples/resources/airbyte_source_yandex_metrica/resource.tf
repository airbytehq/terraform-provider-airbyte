resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  name         = "Emanuel Bernier"
  secret_id    = "...my_secret_id..."
  workspace_id = "50e4c312-0d77-4a56-aac7-96fdac1f48b8"
}