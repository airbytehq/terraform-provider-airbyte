resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    aws_key_id            = "...my_aws_key_id..."
    aws_region_name       = "...my_aws_region_name..."
    aws_secret_key        = "...my_aws_secret_key..."
    lookup_attributes_filter = {
      attribute_key   = "EventName"
      attribute_value = "ListInstanceAssociations"
    }
    start_date = "2021-01-01"
  }
  definition_id = "552bff18-4067-44af-bc96-8a4b1825bd55"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "74a290f5-806c-40bd-8860-ace07aaedafd"
}