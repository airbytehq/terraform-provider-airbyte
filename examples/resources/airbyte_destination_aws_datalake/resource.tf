resource "airbyte_destination_aws_datalake" "my_destination_awsdatalake" {
  configuration = {
    aws_account_id = "111111111111"
    bucket_name    = "...my_bucket_name..."
    bucket_prefix  = "...my_bucket_prefix..."
    credentials = {
      iam_role = {
        role_arn = "...my_role_arn..."
      }
    }
    format = {
      json_lines_newline_delimited_json = {
        compression_codec = "GZIP"
        format_type       = "JSONL"
      }
    }
    glue_catalog_float_as_decimal             = false
    lakeformation_database_default_tag_key    = "pii_level"
    lakeformation_database_default_tag_values = "private,public"
    lakeformation_database_name               = "...my_lakeformation_database_name..."
    lakeformation_governed_tables             = false
    partitioning                              = "DAY"
    region                                    = "ap-southeast-3"
  }
  definition_id = "c3f592b3-8acf-43b2-bea4-e36bf4ba0e7a"
  name          = "Charlie Fisher"
  workspace_id  = "aaebb5cd-76c9-4fd0-bc96-8decb9cb44c8"
}