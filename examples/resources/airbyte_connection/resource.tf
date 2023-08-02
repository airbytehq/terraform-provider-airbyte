resource "airbyte_connection" "my_connection" {
  configurations = {
    streams = [
      {
        cursor_field = [
          "...",
        ]
        name = "Terrence Rau"
        primary_key = [
          [
            "...",
          ],
        ]
        sync_mode = "incremental_deduped_history"
      },
    ]
  }
  data_residency                       = "us"
  destination_id                       = "d69a674e-0f46-47cc-8796-ed151a05dfc2"
  name                                 = "Wilfred Wolff"
  namespace_definition                 = "custom_format"
  namespace_format                     = SOURCE_NAMESPACE
  non_breaking_schema_updates_behavior = "ignore"
  prefix                               = "...my_prefix..."
  schedule = {
    basic_timing    = "...my_basicTiming..."
    cron_expression = "...my_cronExpression..."
    schedule_type   = "cron"
  }
  source_id = "ca1ba928-fc81-4674-acb7-39205929396f"
  status    = "deprecated"
}