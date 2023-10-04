resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    aws_access_key_id     = "...my_aws_access_key_id..."
    aws_secret_access_key = "...my_aws_secret_access_key..."
    bucket                = "...my_bucket..."
    dataset               = "...my_dataset..."
    endpoint              = "...my_endpoint..."
    format = {
      source_s3_file_format_avro = {}
    }
    path_pattern = "**"
    provider = {
      aws_access_key_id     = "...my_aws_access_key_id..."
      aws_secret_access_key = "...my_aws_secret_access_key..."
      bucket                = "...my_bucket..."
      endpoint              = "...my_endpoint..."
      path_prefix           = "...my_path_prefix..."
      start_date            = "2021-01-01T00:00:00Z"
    }
    schema     = "{\"column_1\": \"number\", \"column_2\": \"string\", \"column_3\": \"array\", \"column_4\": \"object\", \"column_5\": \"boolean\"}"
    start_date = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 6
        file_type                       = "...my_file_type..."
        format = {
          source_s3_file_based_stream_config_format_avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Pearl Batz"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  name         = "Rudolph Roberts"
  secret_id    = "...my_secret_id..."
  workspace_id = "d8aaea00-f0c4-4c84-b89e-625bae876a32"
}