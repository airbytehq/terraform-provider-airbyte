resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "16fc803c-8311-4a97-a1ae-8949629432a0"
  name          = "Nichole Wehner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fe7e017f-9052-4f20-80e0-69282dd6a12c"
}