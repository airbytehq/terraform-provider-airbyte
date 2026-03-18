resource "airbyte_destination_milvus" "my_destination_milvus" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
    }
    indexing = {
      auth = {
        no_auth = {
          # ...
        }
      }
      collection   = "...my_collection..."
      db           = ""
      host         = "https://my-instance.zone.zillizcloud.com"
      text_field   = "text"
      vector_field = "vector"
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 0
      chunk_size    = 7640
      field_name_mappings = [
        {
          from_field = "...my_from_field..."
          to_field   = "...my_to_field..."
        }
      ]
      metadata_fields = [
        "..."
      ]
      text_fields = [
        "..."
      ]
      text_splitter = {
        by_markdown_header = {
          split_level = 1
        }
      }
    }
  }
  definition_id = "65de8962-48c9-11ee-be56-0242ac120002"
  name          = "...my_name..."
  workspace_id  = "1da00420-023b-48f0-a8d8-4c9079cc6179"
}