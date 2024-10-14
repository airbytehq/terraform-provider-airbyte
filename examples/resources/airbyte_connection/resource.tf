resource "airbyte_connection" "my_connection" {
  configurations = {
    streams = [
      {
        cursor_field = [
          "..."
        ]
        name = "...my_name..."
        primary_key = [
          {
            # ...
          }
        ]
        selected_fields = [
          {
            field_path = [
              "..."
            ]
          }
        ]
        sync_mode = "incremental_append"
      }
    ]
  }
  data_residency                       = "eu"
  destination_id                       = "5725b342-2d43-4e6c-90a4-e500c954e591"
  name                                 = "...my_name..."
  namespace_definition                 = "custom_format"
  namespace_format                     = SOURCE_NAMESPACE
  non_breaking_schema_updates_behavior = "ignore"
  prefix                               = "...my_prefix..."
  schedule = {
    cron_expression = "...my_cron_expression..."
    schedule_type   = "cron"
  }
  source_id = "b5b2b4a5-bba6-4c3f-b0ef-ab87b373f331"
  status    = "active"
}