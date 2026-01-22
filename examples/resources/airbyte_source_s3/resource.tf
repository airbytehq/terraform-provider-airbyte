resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    aws_access_key_id     = "...my_aws_access_key_id..."
    aws_secret_access_key = "...my_aws_secret_access_key..."
    bucket                = "...my_bucket..."
    delivery_method = {
      copy_raw_files = {
        preserve_directory_structure = false
      }
    }
    endpoint    = "my-s3-endpoint.com"
    region_name = "...my_region_name..."
    role_arn    = "...my_role_arn..."
    start_date  = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 5
        format = {
          excel_format = {
            # ...
          }
          jsonl_format = {
            # ...
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "...my_name..."
        recent_n_files_to_read_for_schema_discovery = 10
        schemaless                                  = true
        validation_policy                           = "Wait for Discover"
      }
    ]
  }
  definition_id = "07ef8ae4-b6a4-4fd9-99ea-a368c6fc144c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bba7dce0-5020-4916-bbd7-be8f298d5f78"
}