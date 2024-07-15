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
    omit_raw_text = true
    processing = {
      chunk_overlap = 6
      chunk_size    = 4
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
          split_level = 2
        }
      }
    }
  }
  definition_id = "5a4e1801-23f0-4d76-bb78-bf74fa22de12"
  name          = "Jenny Braun"
  workspace_id  = "f134d000-7497-474a-a87c-30892ffb0f41"
}