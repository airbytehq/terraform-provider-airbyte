resource "airbyte_source_s3" "my_source_s3" {
  configuration = {
    dataset = "...my_dataset..."
    format = {
      filetype = "avro"
    }
    path_pattern = "myFolder/myTableFiles/*.csv|myFolder/myOtherTableFiles/*.csv"
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
  name         = "Lila Ferry"
  workspace_id = "04b3d3ed-0c56-470e-b42b-d3c9f1cc503f"
}