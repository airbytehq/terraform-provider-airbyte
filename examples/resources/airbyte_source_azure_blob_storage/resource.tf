resource "airbyte_source_azure_blob_storage" "my_source_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key            = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name           = "airbyte5storage"
    azure_blob_storage_blobs_prefix           = "FolderA/FolderB/"
    azure_blob_storage_container_name         = "airbytetescontainername"
    azure_blob_storage_endpoint               = "blob.core.windows.net"
    azure_blob_storage_schema_inference_limit = 500
    format = {
      source_azure_blob_storage_input_format_json_lines_newline_delimited_json = {
        format_type = "JSONL"
      }
    }
    source_type = "azure-blob-storage"
  }
  name         = "Cristina Murphy"
  secret_id    = "...my_secret_id..."
  workspace_id = "36c60050-3d8b-4b31-980f-739ae9e057eb"
}