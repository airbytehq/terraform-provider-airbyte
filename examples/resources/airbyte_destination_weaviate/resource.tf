resource "airbyte_destination_weaviate" "my_destination_weaviate" {
  configuration = {
    embedding = {
      destination_weaviate_azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
    }
    indexing = {
      additional_headers = [
        {
          header_key = "...my_header_key..."
          value      = "...my_value..."
        },
      ]
      auth = {
        destination_weaviate_api_token = {
          token = "...my_token..."
        }
      }
      batch_size         = 6
      default_vectorizer = "text2vec-huggingface"
      host               = "https://my-cluster.weaviate.network"
      text_field         = "...my_text_field..."
    }
    processing = {
      chunk_overlap = 4
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
        destination_weaviate_by_markdown_header = {
          split_level = 4
        }
      }
    }
  }
  definition_id = "97e801e6-7689-4a46-b396-c7c6bf737242"
  name          = "Diana Runte Jr."
  workspace_id  = "59f1e303-60fc-40ea-a506-81bc3adb090c"
}