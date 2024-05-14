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
      default_vectorizer = "text2vec-contextionary"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 4
      chunk_size    = 3
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
          split_level = 1
        }
      }
    }
  }
  definition_id = "4bb490aa-753a-4d11-902b-a188860231ad"
  name          = "Sabrina Dooley"
  workspace_id  = "491985c9-2d33-4cae-bedb-401c239e69c6"
}