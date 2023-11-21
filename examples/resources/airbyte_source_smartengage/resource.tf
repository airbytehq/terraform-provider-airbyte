resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3d1fcf2b-6755-4110-90ec-6c18f2017e88"
  name          = "Neil Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "64f95e84-efb6-4a93-9326-1882dc6ea377"
}