resource "airbyte_source_aws_cloudtrail" "my_source_awscloudtrail" {
  configuration = {
    aws_key_id      = "...my_aws_key_id..."
    aws_region_name = "...my_aws_region_name..."
    aws_secret_key  = "...my_aws_secret_key..."
    start_date      = "2021-01-01"
  }
  definition_id = "1b394b84-acdf-48db-aa4f-7e23711b260f"
  name          = "Janis Erdman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1edcb36c-da3d-451c-bc15-623ec6453ce6"
}