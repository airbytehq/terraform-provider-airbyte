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
      prefer_grpc     = false
      text_field      = "...my_text_field..."
      url             = "...my_url..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 5
      chunk_size    = 1
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
  definition_id = "ed560cd3-f9e1-4f9e-af9a-8e2157a8560c"
  name          = "Austin Vandervort"
  workspace_id  = "fd0c2020-86d3-496d-a60f-942f937a3c59"
}