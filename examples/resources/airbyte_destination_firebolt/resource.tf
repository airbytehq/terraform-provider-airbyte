resource "airbyte_destination_firebolt" "my_destination_firebolt" {
  configuration = {
    account  = "...my_account..."
    database = "...my_database..."
    engine   = "...my_engine..."
    host     = "api.app.firebolt.io"
    loading_method = {
      external_table_via_s3 = {
        aws_key_id     = "...my_aws_key_id..."
        aws_key_secret = "...my_aws_key_secret..."
        s3_bucket      = "...my_s3_bucket..."
        s3_region      = "us-east-1"
      }
    }
    password = "...my_password..."
    username = "username@email.com"
  }
  definition_id = "7e4a59e7-bfd1-4d49-abd1-4d08d4a7d5d4"
  name          = "Ernest Torp III"
  workspace_id  = "3b42c32f-48f6-4e54-ba0f-0f39a6c151a7"
}