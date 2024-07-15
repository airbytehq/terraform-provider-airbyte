resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    lookup_attributes_filter = {
      attribute_key   = "EventName"
      attribute_value = "ConsoleLogin"
    }
    start_date = "2021-01-01"
  }
  definition_id = "af007bc0-4191-4beb-857f-07c546621bdb"
  name          = "Ross Abshire"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f51ed0a-8181-4e6e-95fd-9ebe7b2f5ca6"
}