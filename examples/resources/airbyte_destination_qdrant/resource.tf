resource "airbyte_destination_qdrant" "my_destination_qdrant" {
  configuration = {
    embedding = {
      destination_qdrant_azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
    }
    indexing = {
      auth_method = {
        api_key_auth = {
          api_key = "...my_api_key..."
        }
      }
      collection = "...my_collection..."
      distance_metric = {
        cos = {}
      }
      prefer_grpc = true
      text_field  = "...my_text_field..."
      url         = "...my_url..."
    }
    processing = {
      chunk_overlap = 8
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
        destination_qdrant_by_markdown_header = {
          split_level = 9
        }
      }
    }
  }
  definition_id = "8f8d8392-aab1-45fb-858b-ad9ea7671d58"
  name          = "Kathryn O'Keefe"
  workspace_id  = "9de520ce-3420-4a29-9e5c-09962877b187"
}