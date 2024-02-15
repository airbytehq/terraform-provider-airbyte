resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    aws_access_key_id     = "...my_aws_access_key_id..."
    aws_secret_access_key = "...my_aws_secret_access_key..."
    bucket                = "...my_bucket..."
    dataset               = "...my_dataset..."
    endpoint              = "my-s3-endpoint.com"
    format = {
      avro = {}
    }
    path_pattern = "**"
    provider = {
      aws_access_key_id     = "...my_aws_access_key_id..."
      aws_secret_access_key = "...my_aws_secret_access_key..."
      bucket                = "...my_bucket..."
      endpoint              = "...my_endpoint..."
      path_prefix           = "...my_path_prefix..."
      role_arn              = "...my_role_arn..."
      start_date            = "2021-01-01T00:00:00Z"
    }
    role_arn   = "...my_role_arn..."
    schema     = "{\"column_1\": \"number\", \"column_2\": \"string\", \"column_3\": \"array\", \"column_4\": \"object\", \"column_5\": \"boolean\"}"
    start_date = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 10
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Paul Donnelly"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "b1451026-4179-4a40-b01b-b87b13a43b1e"
  name          = "Mrs. Laurence Kuhn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4eeb23fe-5539-442b-98b6-d0d20932d7e8"
}