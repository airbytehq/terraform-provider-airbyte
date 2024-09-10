resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    bucket          = "...my_bucket..."
    service_account = "...my_service_account..."
    start_date      = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 6
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        legacy_prefix                               = "...my_legacy_prefix..."
        name                                        = "Olga Witting"
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 8
        schemaless                                  = true
        validation_policy                           = "Skip Record"
      },
    ]
  }
  definition_id = "92b4fd67-3f59-4a8d-8acc-9948b0061059"
  name          = "Dr. Cameron Rosenbaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c9b0f0f3-5d94-4270-8e93-ebb36d8aaea0"
}