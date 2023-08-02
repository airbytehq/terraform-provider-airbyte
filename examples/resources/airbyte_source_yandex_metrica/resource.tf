resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token  = "...my_auth_token..."
    counter_id  = "...my_counter_id..."
    end_date    = "2022-01-01"
    source_type = "yandex-metrica"
    start_date  = "2022-01-01"
  }
  name         = "Nina Boyle"
  secret_id    = "...my_secretId..."
  workspace_id = "c6beb68a-0f65-47b7-903a-1480f8de30f0"
}