resource "airbyte_destination_weaviate" "my_destination_weaviate" {
  configuration = {
    embedding = {
      azure_open_ai = {
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
        api_token = {
          token = "...my_token..."
        }
      }
      batch_size         = 4
      default_vectorizer = "text2vec-huggingface"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 1
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
          split_level = 2
        }
      }
    }
  }
  definition_id = "cccbbc51-a3ca-4a62-a557-cba0d338002a"
  name          = "Delores Jakubowski"
  workspace_id  = "cf379fa4-011e-4ae8-9b11-44f7f4dcb281"
}