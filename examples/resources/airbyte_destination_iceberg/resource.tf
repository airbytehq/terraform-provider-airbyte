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
      hive_catalog_use_apache_hive_meta_store = {
        catalog_type    = "Hive"
        database        = "default"
        hive_thrift_uri = "host:port"
      }
      jdbc_catalog_use_relational_database = {
        catalog_schema = "public"
        catalog_type   = "Jdbc"
        database       = "public"
        jdbc_url       = "jdbc:postgresql://{host}:{port}/{database}"
        password       = "...my_password..."
        ssl            = true
        username       = "...my_username..."
      }
      rest_catalog = {
        catalog_type    = "Rest"
        rest_credential = "username:password"
        rest_token      = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
        rest_uri        = "http://localhost:12345"
      }
    }
    format_config = {
      auto_compact                   = true
      compact_target_file_size_in_mb = 9
      flush_batch_size               = 8
      format                         = "Parquet"
    }
    storage_config = {
      s3 = {
        access_key_id        = "A012345678910EXAMPLE"
        s3_bucket_region     = "...my_s3_bucket_region..."
        s3_endpoint          = "http://localhost:9000"
        s3_path_style_access = true
        s3_warehouse_uri     = "s3a://my-bucket/path/to/warehouse"
        secret_access_key    = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
        storage_type         = "S3"
      }
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