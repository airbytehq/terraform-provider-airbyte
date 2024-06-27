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
  definition_id = "4562efb7-ef5d-437e-a6e5-cbc1c0786ea3"
  name          = "Alfonso Grimes"
  workspace_id  = "c4202097-dcad-41af-a414-5a8ead644361"
}