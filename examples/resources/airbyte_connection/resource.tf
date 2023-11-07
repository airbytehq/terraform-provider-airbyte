resource "airbyte_connection" "my_connection" {
  configurations = {
    streams = [
      {
        cursor_field = [
          "...",
        ]
        name = "Cecil Johnson"
        primary_key = [
          [
            "...",
          ],
        ]
        sync_mode = "incremental_deduped_history"
      },
    ]
  }
  data_residency                       = "auto"
  destination_id                       = "e362083e-afc8-4559-94e0-a570f6dd427d"
  name                                 = "Melvin O'Connell"
  namespace_definition                 = "source"
  namespace_format                     = SOURCE_NAMESPACE
  non_breaking_schema_updates_behavior = "propagate_columns"
  prefix                               = "...my_prefix..."
  schedule = {
    basic_timing    = "...my_basic_timing..."
    cron_expression = "...my_cron_expression..."
    schedule_type   = "manual"
  }
  source_id = "78358423-25b6-4c7b-bfd2-fd307d60cb97"
  status    = "deprecated"
}