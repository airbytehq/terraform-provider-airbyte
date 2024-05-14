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
    omit_raw_text = false
    processing = {
      chunk_overlap = 3
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
          split_level = 0
        }
      }
    }
  }
  definition_id = "e1a2bc7d-e0ff-4637-b749-15d3efc2cd95"
  name          = "Laverne Donnelly"
  workspace_id  = "cc1e6f12-9156-404b-95b3-26e06d2448e4"
}