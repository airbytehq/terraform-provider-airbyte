resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    bucket          = "...my_bucket..."
    service_account = "...my_service_account..."
    start_date      = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 9
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "Leland Kshlerin"
        recent_n_files_to_read_for_schema_discovery = 5
        schemaless                                  = false
        validation_policy                           = "Wait for Discover"
      },
    ]
  }
  definition_id = "c604057d-0451-4918-9b5c-ccbbbdb31196"
  name          = "Mindy Morissette"
  secret_id     = "...my_secret_id..."
  workspace_id  = "67745afb-65f1-4720-bd7a-7ec19162647e"
}