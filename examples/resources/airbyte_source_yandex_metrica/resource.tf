resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "71a16fff-1f04-4aee-bc30-6c4f3397c204"
  name          = "June Williamson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "deba481e-413d-4d76-8cc3-ae1d775ee978"
}