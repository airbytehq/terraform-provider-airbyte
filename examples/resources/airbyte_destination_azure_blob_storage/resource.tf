resource "airbyte_destination_azure_blob_storage" "my_destination_azureblobstorage" {
    configuration = {
        azure_blob_storage_account_key = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
        azure_blob_storage_account_name = "airbyte5storage"
        azure_blob_storage_container_name = "airbytetescontainername"
        azure_blob_storage_endpoint_domain_name = "blob.core.windows.net"
        azure_blob_storage_output_buffer_size = 5
        azure_blob_storage_spill_size = 500
        destination_type = "azure-blob-storage"
        format =     {
                flattening = "Root level flattening"
                format_type = "CSV"
            }
    }
            name = "Geneva Klein Jr."
            workspace_id = "74f15471-b5e6-4e13-b99d-488e1e91e450"
        }