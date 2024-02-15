resource "airbyte_source_azure_blob_storage" "my_source_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key    = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name   = "airbyte5storage"
    azure_blob_storage_container_name = "airbytetescontainername"
    azure_blob_storage_endpoint       = "blob.core.windows.net"
    start_date                        = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 9
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Pablo White"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "deb7264d-ad9e-45fb-9312-6691bfb5db9e"
  name          = "Eugene Goyette"
  secret_id     = "...my_secret_id..."
  workspace_id  = "51fb73f4-72f2-4e8b-bfe1-8227a33308df"
}