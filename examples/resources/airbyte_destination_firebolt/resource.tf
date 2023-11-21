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
  definition_id = "d37ea6e5-cbc1-4c07-86ea-3ea494c42020"
  name          = "Jared Spencer"
  workspace_id  = "d1afa414-5a8e-4ad6-8436-1fa9c0130565"
}