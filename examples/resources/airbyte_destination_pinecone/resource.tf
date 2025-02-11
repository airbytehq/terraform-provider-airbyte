resource "airbyte_destination_pinecone" "my_destination_pinecone" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
      cohere = {
        cohere_key = "...my_cohere_key..."
      }
      fake = {
        # ...
      }
      open_ai = {
        openai_key = "...my_openai_key..."
      }
      open_ai_compatible = {
        api_key    = "...my_api_key..."
        base_url   = "https://your-service-name.com"
        dimensions = 1536
        model_name = "text-embedding-ada-002"
      }
    }
    indexing = {
      index                = "...my_index..."
      pinecone_environment = "us-west1-gcp"
      pinecone_key         = "...my_pinecone_key..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 4
      chunk_size    = 7074
      field_name_mappings = [
        {
          from_field = "...my_from_field..."
          to_field   = "...my_to_field..."
        }
      ]
      metadata_fields = [
        "..."
      ]
      text_fields = [
        "..."
      ]
      text_splitter = {
        by_markdown_header = {
          split_level = 1
        }
        by_programming_language = {
          language = "ruby"
        }
        by_separator = {
          keep_separator = true
          separators = [
            "..."
          ]
        }
      }
    }
  }
  definition_id = "ae1c7c9a-2b03-4eee-843a-7ed67978265e"
  name          = "...my_name..."
  workspace_id  = "a8bd2b0a-cdce-4816-9962-7547715c4567"
}