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
  definition_id = "57da65ed-465e-4758-afd2-ad38ed7ed0e5"
  name          = "Mr. Benjamin Collins"
  workspace_id  = "c7d0e4e5-095e-4d94-b4ec-b397d064562e"
}