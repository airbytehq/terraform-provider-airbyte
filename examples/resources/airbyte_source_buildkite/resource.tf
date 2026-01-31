resource "airbyte_source_buildkite" "my_source_buildkite" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-11-28T09:54:39.864Z"
  }
  definition_id = "e3de7d6b-4acb-4d3c-852a-12d4c39d315f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d002e60-aedb-4550-9465-4979fa56c6c7"
}