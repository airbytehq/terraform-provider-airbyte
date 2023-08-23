resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token  = "...my_auth_token..."
    counter_id  = "...my_counter_id..."
    end_date    = "2022-01-01"
    source_type = "yandex-metrica"
    start_date  = "2022-01-01"
  }
  name         = "Reginald Carter"
  secret_id    = "...my_secret_id..."
  workspace_id = "e5eb5f0c-492b-4574-8d08-a2267aaee79e"
}