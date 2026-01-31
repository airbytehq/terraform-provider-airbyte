resource "airbyte_source_datagen" "my_source_datagen" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    concurrency           = 10
    flavor = {
      all_types = {
        additional_properties = "{ \"see\": \"documentation\" }"
        data_type             = "types"
      }
      incremental = {
        additional_properties = "{ \"see\": \"documentation\" }"
        data_type             = "increment"
      }
    }
    max_records = 3
  }
  definition_id = "b70c5593-7805-494e-b426-44578b0da283"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e689c798-6e95-488c-b534-0081134ae9cc"
}