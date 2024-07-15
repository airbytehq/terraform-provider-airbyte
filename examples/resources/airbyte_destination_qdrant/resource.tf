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
      distance_metric = "cos"
      prefer_grpc     = true
      text_field      = "...my_text_field..."
      url             = "...my_url..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 9
      chunk_size    = 2
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
          split_level = 6
        }
      }
    }
  }
  definition_id = "dbc4fabb-f199-4438-a023-b4de2c1a7f28"
  name          = "Gerard Simonis"
  workspace_id  = "de3c9d6f-a94b-474b-938f-85ce1dfc1b27"
}