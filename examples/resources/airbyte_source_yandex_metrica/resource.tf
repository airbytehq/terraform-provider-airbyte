resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
    counter_id            = "...my_counter_id..."
    end_date              = "2022-01-01"
    start_date            = "2022-01-01"
  }
  definition_id = "7865dce4-2211-4f6a-88e5-9d0fe161afe7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6c60bbf7-6432-4c67-b204-c66a226265d9"
}