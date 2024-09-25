resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    lookup_attributes_filter = {
      attribute_key   = "EventName"
      attribute_value = "ListInstanceAssociations"
    }
    start_date = "2021-01-01"
  }
  definition_id = "70494da2-1b79-4cfd-9baf-3821deb7264d"
  name          = "Rufus McCullough"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fb531266-91bf-4b5d-b9ea-24da51fb73f4"
}