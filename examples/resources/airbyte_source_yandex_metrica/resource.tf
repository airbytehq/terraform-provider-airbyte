resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "7bfa06d4-99c4-49a4-9eb2-7129d8820f70"
  name          = "Andres Schumm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "78e77f23-2c62-4b19-bfe7-2e063d1bd835"
}