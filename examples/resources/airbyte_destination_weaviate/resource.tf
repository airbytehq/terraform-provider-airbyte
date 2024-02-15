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
      batch_size         = 9
      default_vectorizer = "text2vec-contextionary"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 2
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
          split_level = 2
        }
      }
    }
  }
  definition_id = "bbde9f2b-b80c-4d3f-a4ad-282938c45275"
  name          = "April Friesen IV"
  workspace_id  = "930ed8d4-3c0d-4abb-a6ef-9fc3c3744fd2"
}