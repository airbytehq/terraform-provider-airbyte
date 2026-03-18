resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    cdc_deletion_mode     = "Hard delete"
    credentials_json      = "...my_credentials_json..."
    dataset_id            = "...my_dataset_id..."
    dataset_location      = "EU"
    disable_type_dedupe   = false
    loading_method = {
      batched_standard_inserts = {
        additional_properties = "{ \"see\": \"documentation\" }"
        method                = "Standard"
      }
    }
    project_id       = "...my_project_id..."
    raw_data_dataset = "...my_raw_data_dataset..."
  }
  definition_id = "22f6c74f-5699-40ff-833c-4a879ea40133"
  name          = "...my_name..."
  workspace_id  = "acee73dd-54d3-476f-a8ea-d39d218f52cd"
}