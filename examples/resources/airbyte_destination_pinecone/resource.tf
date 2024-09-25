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
      chunk_overlap = 5
      chunk_size    = 3
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
          split_level = 6
        }
      }
    }
  }
  definition_id = "15d3efc2-cd95-40e3-aacc-1e6f12915604"
  name          = "Lloyd Hartmann"
  workspace_id  = "26e06d24-48e4-4e42-a530-50a9afbc66c9"
}