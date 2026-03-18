resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    aws_access_key_id     = "...my_aws_access_key_id..."
    aws_secret_access_key = "...my_aws_secret_access_key..."
    bucket                = "...my_bucket..."
    dataset               = "...my_dataset..."
    delivery_method = {
      copy_raw_files = {
        preserve_directory_structure = true
      }
    }
    endpoint = "my-s3-endpoint.com"
    format = {
      parquet = {
        batch_size  = 65536
        buffer_size = 2
        columns = [
          "..."
        ]
      }
    }
    path_pattern = "**"
    provider = {
      aws_access_key_id     = "...my_aws_access_key_id..."
      aws_secret_access_key = "...my_aws_secret_access_key..."
      bucket                = "...my_bucket..."
      endpoint              = ""
      path_prefix           = ""
      region_name           = "...my_region_name..."
      role_arn              = "...my_role_arn..."
      start_date            = "2021-01-01T00:00:00Z"
    }
    region_name = "...my_region_name..."
    role_arn    = "...my_role_arn..."
    schema      = "{\"column_1\": \"number\", \"column_2\": \"string\", \"column_3\": \"array\", \"column_4\": \"object\", \"column_5\": \"boolean\"}"
    start_date  = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 3
        format = {
          excel_format = {
            # ...
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        legacy_prefix                               = "...my_legacy_prefix..."
        name                                        = "...my_name..."
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 10
        schemaless                                  = false
        validation_policy                           = "Emit Record"
      }
    ]
  }
  definition_id = "69589781-7828-43c5-9f63-8925b1c1ccc2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bba7dce0-5020-4916-bbd7-be8f298d5f78"
}