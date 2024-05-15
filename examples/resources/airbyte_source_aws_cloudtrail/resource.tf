resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    start_date      = "2021-01-01"
  }
  definition_id = "59a0bee1-c5ff-4223-b892-042261684e73"
  name          = "Mr. Irvin Kertzmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "915f597c-f589-4655-bce1-7ccd6b10d638"
}