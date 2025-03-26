resource "airbyte_destination_iceberg" "my_destination_iceberg" {
  configuration = {
    catalog_config = {
      glue_catalog = {
        catalog_type = "Glue"
        database     = "public"
      }
      hadoop_catalog_use_hierarchical_file_systems_as_same_as_storage_config = {
        catalog_type = "Hadoop"
        database     = "default"
      }
    }
    format_config = {
      auto_compact                   = true
      compact_target_file_size_in_mb = 9
      flush_batch_size               = 8
      format                         = "Parquet"
    }
    storage_config = {
      server_managed = {
        managed_warehouse_name = "...my_managed_warehouse_name..."
        storage_type           = "MANAGED"
      }
    }
  }
  definition_id = "263446c4-43e9-45cc-ac60-4398823f5d7f"
  name          = "...my_name..."
  workspace_id  = "a348c0e2-12a2-4320-9af6-f59e32031847"
}