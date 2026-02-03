resource "airbyte_source_hugging_face_datasets" "my_source_huggingfacedatasets" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    dataset_name          = "...my_dataset_name..."
    dataset_splits = [
      "{ \"see\": \"documentation\" }"
    ]
    dataset_subsets = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "f15ad351-9b44-4be5-9747-f4289e4b150e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "aca928e7-7bba-4a6a-9a12-c17667fab2c3"
}