resource "airbyte_destination_qdrant" "my_destination_qdrant" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
    }
    indexing = {
      auth_method = {
        api_key_auth = {
          api_key = "...my_api_key..."
        }
      }
      collection      = "...my_collection..."
      distance_metric = "euc"
      prefer_grpc     = true
      text_field      = "...my_text_field..."
      url             = "...my_url..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 6
      chunk_size    = 5
      field_name_mappings = [
        {
          from_field = "...my_from_field..."
          to_field   = "...my_to_field..."
        },
      ]
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
      text_splitter = {
        by_markdown_header = {
          split_level = 9
        }
      }
    }
  }
  definition_id = "b19e64b8-3f63-4d34-8370-e173ec9d4f32"
  name          = "Ms. Antonio Thiel"
  workspace_id  = "a8a43c0f-29f7-4cbd-92b3-20943801c367"
}