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
      batch_size         = 6
      default_vectorizer = "text2vec-huggingface"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 5
      chunk_size    = 8
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
          split_level = 8
        }
      }
    }
  }
  definition_id = "3fde334f-786a-4ae3-aaf5-27fe19eb1bf8"
  name          = "Sheldon Crooks"
  workspace_id  = "9467597e-801e-4676-89a4-6f396c7c6bf7"
}