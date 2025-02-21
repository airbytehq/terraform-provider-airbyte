resource "airbyte_destination_aws_datalake" "my_destination_awsdatalake" {
  configuration = {
    aws_account_id = "111111111111"
    bucket_name    = "...my_bucket_name..."
    bucket_prefix  = "...my_bucket_prefix..."
    credentials = {
      iam_role = {
        role_arn = "...my_role_arn..."
      }
      iam_user = {
        aws_access_key_id     = "...my_aws_access_key_id..."
        aws_secret_access_key = "...my_aws_secret_access_key..."
      }
    }
    format = {
      json_lines_newline_delimited_json = {
        compression_codec = "UNCOMPRESSED"
        format_type       = "JSONL"
      }
      parquet_columnar_storage = {
        compression_codec = "GZIP"
        format_type       = "Parquet"
      }
    }
    glue_catalog_float_as_decimal             = true
    lakeformation_database_default_tag_key    = "pii_level"
    lakeformation_database_default_tag_values = "private,public"
    lakeformation_database_name               = "...my_lakeformation_database_name..."
    lakeformation_governed_tables             = true
    partitioning                              = "DAY"
    region                                    = "ap-southeast-4"
  }
  definition_id = "aa9c2d01-84b7-4474-ba6f-e45dbbc28cdd"
  name          = "...my_name..."
  workspace_id  = "3df68150-9956-454d-8144-1645f409cdd1"
}