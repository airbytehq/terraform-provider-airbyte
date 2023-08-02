resource "airbyte_destination_aws_datalake" "my_destination_awsdatalake" {
    configuration = {
        aws_account_id = "111111111111"
        bucket_name = "...my_bucket_name..."
        bucket_prefix = "...my_bucket_prefix..."
        credentials =     {
                credentials_title = "IAM Role"
                role_arn = "...my_role_arn..."
            }
        destination_type = "aws-datalake"
        format =     {
                compression_codec = "UNCOMPRESSED"
                format_type = "JSONL"
            }
        glue_catalog_float_as_decimal = false
        lakeformation_database_default_tag_key = "pii_level"
        lakeformation_database_default_tag_values = "private,public"
        lakeformation_database_name = "...my_lakeformation_database_name..."
        lakeformation_governed_tables = true
        partitioning = "YEAR/MONTH/DAY"
        region = "us-gov-east-1"
    }
            name = "Angie Durgan"
            workspace_id = "fa946773-9251-4aa5-ac3f-5ad019da1ffe"
        }