resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "fe7e017f-9052-4f20-80e0-69282dd6a12c"
  name          = "Robert Bosco"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9faeeda-0582-4852-b913-edfcf9c9058e"
}