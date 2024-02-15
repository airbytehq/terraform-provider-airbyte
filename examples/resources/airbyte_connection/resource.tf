resource "airbyte_connection" "my_connection" {
  data_residency                       = "eu"
  destination_id                       = "669dd1e3-6208-43ea-bc85-5914e0a570f6"
  name                                 = "Taylor Hagenes"
  namespace_definition                 = "custom_format"
  namespace_format                     = SOURCE_NAMESPACE
  non_breaking_schema_updates_behavior = "propagate_columns"
  prefix                               = "...my_prefix..."
  source_id                            = "3a555847-8358-4423-a5b6-c7b3fd2fd307"
  status                               = "deprecated"
}