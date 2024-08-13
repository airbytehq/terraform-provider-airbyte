resource "airbyte_source_yandex_metrica" "my_source_yandexmetrica" {
  configuration = {
    auth_token = "...my_auth_token..."
    counter_id = "...my_counter_id..."
    end_date   = "2022-01-01"
    start_date = "2022-01-01"
  }
  definition_id = "deba481e-413d-4d76-8cc3-ae1d775ee978"
  name          = "Dr. Lawrence Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5746ac11-eb02-4437-a4c2-fa90b3fc58ae"
}