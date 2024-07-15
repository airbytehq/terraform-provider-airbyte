resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "f04aeebc-306c-44f3-b97c-20475faadeba"
  name          = "Terry Bergnaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "13dd760c-c3ae-41d7-b5ee-978f160f4574"
}