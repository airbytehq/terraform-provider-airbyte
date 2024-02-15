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
      host         = "tcp://host.docker.internal:19530"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 2
      chunk_size    = 6
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
          split_level = 10
        }
      }
    }
  }
  definition_id = "a0e10165-90e1-4a2b-87de-0ff637374915"
  name          = "Jacob Walker"
  workspace_id  = "2cd950e3-6acc-41e6-b129-15604b55b326"
}