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
      pinecone_environment = "us-west1-gcp"
      pinecone_key         = "...my_pinecone_key..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 0
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
          split_level = 3
        }
      }
    }
  }
  definition_id = "90e1a2bc-7de0-4ff6-b737-4915d3efc2cd"
  name          = "Jorge Beahan"
  workspace_id  = "6acc1e6f-1291-4560-8b55-b326e06d2448"
}