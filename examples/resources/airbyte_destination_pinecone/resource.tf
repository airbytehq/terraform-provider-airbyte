resource "airbyte_destination_pinecone" "my_destination_pinecone" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
    }
    indexing = {
      index                = "...my_index..."
      pinecone_environment = "gcp-starter"
      pinecone_key         = "...my_pinecone_key..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 2
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
          split_level = 0
        }
      }
    }
  }
  definition_id = "1c3678d4-2b62-494a-b1a2-9aaf3c68070e"
  name          = "Oliver Boyer"
  workspace_id  = "7042295e-6e54-4dc3-8616-586b73990fea"
}