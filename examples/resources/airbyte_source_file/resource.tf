resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "csv"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
      gcs_google_cloud_storage = {
        service_account_json = "...my_service_account_json..."
      }
      https_public_web = {
        user_agent = false
      }
      local_filesystem_limited = {
        # ...
      }
      s3_amazon_web_services = {
        aws_access_key_id     = "...my_aws_access_key_id..."
        aws_secret_access_key = "...my_aws_secret_access_key..."
      }
      scp_secure_copy_protocol = {
        host     = "...my_host..."
        password = "...my_password..."
        port     = "...my_port..."
        user     = "...my_user..."
      }
      sftp_secure_file_transfer_protocol = {
        host     = "...my_host..."
        password = "...my_password..."
        port     = "...my_port..."
        user     = "...my_user..."
      }
      ssh_secure_shell = {
        host     = "...my_host..."
        password = "...my_password..."
        port     = "...my_port..."
        user     = "...my_user..."
      }
    }
    reader_options = "{}"
    url            = "https://storage.googleapis.com/covid19-open-data/v2/latest/epidemiology.csv"
  }
  definition_id = "a86f29c4-a6d3-472d-a3d8-9e8b8db9cd49"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6c152f5f-2668-4edb-bbeb-b6add70adfbc"
}