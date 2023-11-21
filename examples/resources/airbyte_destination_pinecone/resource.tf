resource "airbyte_destination_pinecone" "my_destination_pinecone" {
  configuration = {
    embedding = {
      destination_pinecone_azure_open_ai = {
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
    processing = {
      chunk_overlap = 6
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
        destination_pinecone_by_markdown_header = {
          split_level = 7
        }
      }
    }
  }
  definition_id = "d49dbc4f-abbf-4199-8382-023b4de2c1a7"
  name          = "Bobby Lemke"
  workspace_id  = "d3cde3c9-d6fa-494b-b4b9-38f85ce1dfc1"
}