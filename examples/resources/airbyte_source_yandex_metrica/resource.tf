resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token  = "...my_auth_token..."
    counter_id  = "...my_counter_id..."
    end_date    = "2022-01-01"
    source_type = "yandex-metrica"
    start_date  = "2022-01-01"
  }
  name         = "Mr. Ada Kozey"
  workspace_id = "a48f88ec-e7bf-4904-a011-05d38908162c"
}