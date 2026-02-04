resource "airbyte_source_jina_ai_reader" "my_source_jinaaireader" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    gather_images         = false
    gather_links          = false
    read_prompt           = "...my_read_prompt..."
    search_prompt         = "...my_search_prompt..."
  }
  definition_id = "d301cf03-42ec-4862-ab73-c65528a63033"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "05d0b3b3-13e5-49ef-b484-3a54fe943a54"
}