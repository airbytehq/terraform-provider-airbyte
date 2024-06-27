resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    start_date      = "2021-01-01"
  }
  definition_id = "af2b0521-0208-4e03-ab26-8d758466c963"
  name          = "Justin Bauch MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "394b84ac-df8d-4b6a-8f7e-23711b260f5d"
}