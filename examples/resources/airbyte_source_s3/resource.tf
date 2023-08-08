resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    dataset = "...my_dataset..."
    format = {
      source_s3_file_format_avro = {
        filetype = "avro"
      }
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
    schema      = "{\"column_1\": \"number\", \"column_2\": \"string\", \"column_3\": \"array\", \"column_4\": \"object\", \"column_5\": \"boolean\"}"
    source_type = "s3"
  }
  name         = "Sarah Feeney"
  secret_id    = "...my_secret_id..."
  workspace_id = "c39bcd0a-6290-4f95-bf38-5189ad7ef807"
}