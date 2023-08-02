resource "airbyte_source_azure_blob_storage" "my_source_azureblobstorage" {
    configuration = {
        azure_blob_storage_account_key = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
        azure_blob_storage_account_name = "airbyte5storage"
        azure_blob_storage_blobs_prefix = "FolderA/FolderB/"
        azure_blob_storage_container_name = "airbytetescontainername"
        azure_blob_storage_endpoint = "blob.core.windows.net"
        azure_blob_storage_schema_inference_limit = 500
        format =     {
                format_type = "JSONL"
            }
        source_type = "azure-blob-storage"
    }
            name = "Lucille Funk"
            workspace_id = "72e80285-7a5b-4404-a3a7-d575f1400e76"
        }