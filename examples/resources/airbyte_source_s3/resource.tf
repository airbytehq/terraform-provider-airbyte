resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    aws_access_key_id     = "...my_aws_access_key_id..."
    aws_secret_access_key = "...my_aws_secret_access_key..."
    bucket                = "...my_bucket..."
    endpoint              = "https://my-s3-endpoint.com"
    region_name           = "...my_region_name..."
    role_arn              = "...my_role_arn..."
    start_date            = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 6
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "Christie Emard"
        recent_n_files_to_read_for_schema_discovery = 3
        schemaless                                  = true
        validation_policy                           = "Emit Record"
      },
    ]
  }
  definition_id = "819ff393-429d-4316-9dd8-595e9c61e20d"
  name          = "Pedro West"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b11c60c3-a7ba-4336-a48b-e45dfad9324f"
}