resource "airbyte_source_azure_blob_storage" "my_source_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key    = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name   = "airbyte5storage"
    azure_blob_storage_container_name = "airbytetescontainername"
    azure_blob_storage_endpoint       = "blob.core.windows.net"
    start_date                        = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 8
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
        name              = "Angelina Armstrong"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "e16b8da7-b814-43f8-91cf-99c7fd70e504"
  name          = "Joy Sipes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f64874e-62c5-48d8-b92f-d48887cb19c4"
}