resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    start_date      = "2021-01-01"
  }
  definition_id = "fa21aa37-3672-471c-b8a9-aa9603df323c"
  name          = "Nadine Konopelski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b7f8882-a197-438b-a18b-70494da21b79"
}