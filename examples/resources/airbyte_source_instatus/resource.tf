resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "instatus"
  }
  name         = "Bertha Marks"
  workspace_id = "0d6a1831-c87a-4df5-96fd-f1ad837ae80c"
}