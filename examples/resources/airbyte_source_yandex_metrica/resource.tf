resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "6756fe05-8810-422b-8ad4-5dc078875452"
  name          = "Elsa Douglas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab512289-0f3e-4992-82a3-f4c8fc026c7c"
}