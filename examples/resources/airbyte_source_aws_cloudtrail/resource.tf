resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    start_date      = "2021-01-01"
  }
  name         = "Ernesto Koelpin"
  secret_id    = "...my_secret_id..."
  workspace_id = "1d5852a4-59de-4520-8e34-20a295e5c099"
}