resource "airbyte_source_pennylane" "my_source_pennylane" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_time            = "2021-06-03T08:32:57.060Z"
  }
  definition_id = "b9e4a306-4e3b-4387-a01d-c00d03d8c28c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "68c0608d-791c-40e1-afa5-c0f0594a51ec"
}