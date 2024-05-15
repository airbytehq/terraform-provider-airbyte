resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "excel_binary"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{\"sep\": \" \"}"
    url            = "s3://gdelt-open-data/events/20190914.export.csv"
  }
  definition_id = "ae086e3c-2d33-4082-ab84-0e56112c1fda"
  name          = "Miss Denise Bins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfbec287-654f-412b-8840-28fbb0cddcf8"
}