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
      batch_size         = 1
      default_vectorizer = "text2vec-palm"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 0
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
        by_markdown_header = {
          split_level = 4
        }
      }
    }
  }
  definition_id = "8467e5cd-3332-485c-bcc3-fde334f786aa"
  name          = "Dale Padberg"
  workspace_id  = "527fe19e-b1bf-48ee-a339-467597e801e6"
}