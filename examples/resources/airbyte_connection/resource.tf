resource "airbyte_connection" "my_connection" {
  configurations = {
    streams = [
      {
        cursor_field = [
          "..."
        ]
        include_files = false
        mappers = [
          {
            id = "6563d1b7-013b-4974-a129-ba463c808f28"
            mapper_configuration = {
              field_renaming = {
                new_field_name      = "...my_new_field_name..."
                original_field_name = "...my_original_field_name..."
              }
            }
            type = "field-renaming"
          }
        ]
        name      = "...my_name..."
        namespace = "...my_namespace..."
        primary_key = [
          [
            # ...
          ]
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
  data_residency                       = "...my_data_residency..."
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
  tags = [
    {
      color        = "...my_color..."
      name         = "...my_name..."
      tag_id       = "bf69ef26-2003-4c6e-9dfa-5867d7dba86a"
      workspace_id = "a46bf3e2-e63d-4e32-8959-37721daec43c"
    }
  ]
}