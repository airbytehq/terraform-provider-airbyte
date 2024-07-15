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
    path_pattern = "myFolder/myTableFiles/*.csv|myFolder/myOtherTableFiles/*.csv"
    provider = {
      aws_access_key_id     = "...my_aws_access_key_id..."
      aws_secret_access_key = "...my_aws_secret_access_key..."
      bucket                = "...my_bucket..."
      endpoint              = "...my_endpoint..."
      path_prefix           = "...my_path_prefix..."
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
        days_to_sync_if_history_is_full = 0
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Alfredo Lowe DVM"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "6fd3b8cc-64e9-45a7-a369-2db06d3b499d"
  name          = "Gerardo Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "34afcb06-3184-4072-9444-d2b8965caaba"
}