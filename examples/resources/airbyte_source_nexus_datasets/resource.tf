resource "airbyte_source_nexus_datasets" "my_source_nexusdatasets" {
  configuration = {
    access_key_id         = "...my_access_key_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    base_url              = "...my_base_url..."
    dataset_name          = "...my_dataset_name..."
    mode                  = "Incremental"
    secret_key            = "...my_secret_key..."
    user_id               = "...my_user_id..."
  }
  definition_id = "41e62131-11e7-4a52-ac5b-bb1bc3a3556a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f37ce960-8ced-4f84-a7ee-b7b5aaf0b237"
}