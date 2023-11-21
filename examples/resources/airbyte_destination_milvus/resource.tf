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
        destination_milvus_api_token = {
          token = "...my_token..."
        }
      }
      collection   = "...my_collection..."
      db           = "...my_db..."
      host         = "tcp://my-local-milvus:19530"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    processing = {
      chunk_overlap = 1
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
          split_level = 7
        }
      }
    }
  }
  definition_id = "6683bb76-cbdd-442c-84b7-b603cc8cd887"
  name          = "Mr. Karl Jacobson"
  workspace_id  = "13ef7fc0-d176-4e5f-8145-49f1242182d1"
}