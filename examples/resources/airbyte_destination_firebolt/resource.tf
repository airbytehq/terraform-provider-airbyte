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
  definition_id = "18081484-02a5-4662-8dba-b270b582f321"
  name          = "...my_name..."
  workspace_id  = "3a7065bd-8875-464a-a7d2-4af683bf7d5f"
}