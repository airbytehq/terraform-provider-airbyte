resource "airbyte_source_openfda" "my_source_openfda" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "3f1ab22a-34e9-4821-a096-0da0b5378d45"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c4e9dc87-213b-4418-ba70-0bca3fadc034"
}