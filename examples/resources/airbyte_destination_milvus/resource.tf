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
        api_token = {
          token = "...my_token..."
        }
      }
      collection   = "...my_collection..."
      db           = "...my_db..."
      host         = "tcp://my-local-milvus:19530"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 3
      chunk_size    = 0
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
          split_level = 7
        }
      }
    }
  }
  definition_id = "78cf13c3-589b-4c3e-aba6-3d3987f09ed8"
  name          = "Ms. Marilyn Sporer"
  workspace_id  = "ddbef1f8-7bb5-4069-a16a-5a735a4e1801"
}