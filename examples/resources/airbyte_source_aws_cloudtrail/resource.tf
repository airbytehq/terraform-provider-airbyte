resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    source_type     = "aws-cloudtrail"
    start_date      = "2021-01-01"
  }
  name         = "Nellie Waters"
  secret_id    = "...my_secret_id..."
  workspace_id = "09e28103-31f3-4981-94c7-00b607f3c93c"
}