resource "airbyte_source_file" "my_source_file" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    dataset_name          = "...my_dataset_name..."
    format                = "csv"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{}"
    url            = "https://storage.googleapis.com/covid19-open-data/v2/latest/epidemiology.csv"
  }
  definition_id = "778daa7c-feaf-4db6-96f3-70fd645acc77"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6c152f5f-2668-4edb-bbeb-b6add70adfbc"
}