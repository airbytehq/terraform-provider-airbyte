resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "579b424a-0569-4229-a6de-0331191cf44b"
  name          = "Jacob Bergnaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c75cd175-6719-46a7-941f-a2a7924db04e"
}