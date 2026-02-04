resource "airbyte_destination_chroma" "my_destination_chroma" {
  configuration = {
    embedding = {
      open_ai_compatible = {
        api_key    = "...my_api_key..."
        base_url   = "https://your-service-name.com"
        dimensions = 1536
        model_name = "text-embedding-ada-002"
      }
    }
    indexing = {
      auth_method = {
        persistent_client_mode = {
          path = "...my_path..."
        }
      }
      collection_name = "...my_collection_name..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 4
      chunk_size    = 5200
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
        by_programming_language = {
          language = "rust"
        }
      }
    }
  }
  definition_id = "5cfa65f3-1dfd-4e46-b8bc-474616f7fe19"
  name          = "...my_name..."
  workspace_id  = "f14db8b9-b917-457c-bdec-9b7cb2a4cbf9"
}