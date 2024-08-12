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
      chunk_size    = 9
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
  definition_id = "e42a5305-0a9a-4fbc-a6c9-13a5b78062a6"
  name          = "Gregory Flatley"
  workspace_id  = "b7f63598-ffb0-4429-a4fa-eae5018c3193"
}