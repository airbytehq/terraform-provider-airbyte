resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "cb9fd6e1-ad74-470b-8320-ef50a8ca76b0"
  name          = "Stanley Toy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "80df1804-a67b-49f3-a581-49512957c298"
}