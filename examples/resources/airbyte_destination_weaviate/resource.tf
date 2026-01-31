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
      batch_size         = 9
      default_vectorizer = "text2vec-cohere"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 4
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
          split_level = 4
        }
      }
    }
  }
  definition_id = "37374193-1614-4ed2-9e81-293bdd2b75ef"
  name          = "...my_name..."
  workspace_id  = "3a2f5d63-fb57-4357-9913-ad72f8c70fbf"
}