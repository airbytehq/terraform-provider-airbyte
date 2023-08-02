resource "airbyte_destination_aws_datalake" "my_destination_awsdatalake" {
  configuration = {
    aws_account_id = "111111111111"
    bucket_name    = "...my_bucket_name..."
    bucket_prefix  = "...my_bucket_prefix..."
    credentials = {
      destination_aws_datalake_authentication_mode_iam_role = {
        credentials_title = "IAM Role"
        role_arn          = "...my_role_arn..."
      }
    }
    destination_type = "aws-datalake"
    format = {
      destination_aws_datalake_output_format_wildcard_json_lines_newline_delimited_json = {
        compression_codec = "UNCOMPRESSED"
        format_type       = "JSONL"
      }
    }
    glue_catalog_float_as_decimal             = false
    lakeformation_database_default_tag_key    = "pii_level"
    lakeformation_database_default_tag_values = "private,public"
    lakeformation_database_name               = "...my_lakeformation_database_name..."
    lakeformation_governed_tables             = false
    partitioning                              = "DAY"
    region                                    = "us-west-2"
  }
  name         = "Gloria Padberg"
  workspace_id = "2c3f5ad0-19da-41ff-a78f-097b0074f154"
}