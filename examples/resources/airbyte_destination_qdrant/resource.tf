resource "airbyte_destination_qdrant" "my_destination_qdrant" {
  configuration = {
    embedding = {
      azure_open_ai = {
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
      collection      = "...my_collection..."
      distance_metric = "dot"
      prefer_grpc     = true
      text_field      = "...my_text_field..."
      url             = "...my_url..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 8
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
          split_level = 9
        }
      }
    }
  }
  definition_id = "e2c1a7f2-88ad-43cd-a3c9-d6fa94b74b93"
  name          = "Cary Lueilwitz"
  workspace_id  = "e1dfc1b2-798d-4b19-a64b-83f63d348370"
}