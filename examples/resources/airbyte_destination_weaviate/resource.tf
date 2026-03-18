resource "airbyte_destination_weaviate" "my_destination_weaviate" {
  configuration = {
    embedding = {
      from_field = {
        dimensions = 1536
        field_name = "embedding"
      }
    }
    indexing = {
      additional_headers = [
        {
          header_key = "...my_header_key..."
          value      = "...my_value..."
        }
      ]
      auth = {
        api_token = {
          token = "...my_token..."
        }
      }
      batch_size         = 128
      default_vectorizer = "none"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = ""
      text_field         = "text"
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 0
      chunk_size    = 4921
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
      }
    }
  }
  definition_id = "7b7d7a0d-954c-45a0-bcfc-39a634b97736"
  name          = "...my_name..."
  workspace_id  = "3a2f5d63-fb57-4357-9913-ad72f8c70fbf"
}