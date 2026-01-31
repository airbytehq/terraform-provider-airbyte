resource "airbyte_destination_firebolt" "my_destination_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
    loading_method = {
      external_table_via_s3 = {
        aws_key_id     = "...my_aws_key_id..."
        aws_key_secret = "...my_aws_key_secret..."
        s3_bucket      = "...my_s3_bucket..."
        s3_region      = "us-east-1"
      }
    }
  }
  definition_id = "cb044c1f-5609-4f2c-a0f3-7f7fd2ae8ba8"
  name          = "...my_name..."
  workspace_id  = "3a7065bd-8875-464a-a7d2-4af683bf7d5f"
}