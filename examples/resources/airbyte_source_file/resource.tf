resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "jsonl"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{\"sep\": \" \"}"
    url            = "gs://my-google-bucket/data.csv"
  }
  definition_id = "b53a479a-0805-4ff1-b93b-f9b799d63199"
  name          = "Gilberto Jones"
  secret_id     = "...my_secret_id..."
  workspace_id  = "68c85ec2-1a9a-4b56-bf13-c77e51fa773f"
}