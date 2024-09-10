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
  definition_id = "38a1edcb-36cd-4a3d-91cb-c15623ec6453"
  name          = "Doyle Hirthe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf0d0e20-de16-4b8d-a7b8-143f851cf99c"
}