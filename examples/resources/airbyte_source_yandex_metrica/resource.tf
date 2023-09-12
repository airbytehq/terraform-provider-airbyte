resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token  = "...my_auth_token..."
    counter_id  = "...my_counter_id..."
    end_date    = "2022-01-01"
    source_type = "yandex-metrica"
    start_date  = "2022-01-01"
  }
  name         = "Dominic Marvin"
  secret_id    = "...my_secret_id..."
  workspace_id = "e102da2d-e35f-48e0-9bf3-3eaab45402ac"
}