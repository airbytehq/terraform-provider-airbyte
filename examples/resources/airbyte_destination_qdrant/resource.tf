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
      distance_metric = "euc"
      prefer_grpc     = true
      text_field      = "...my_text_field..."
      url             = "...my_url..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 8
      chunk_size    = 5940
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
        by_programming_language = {
          language = "html"
        }
      }
    }
  }
  definition_id = "e4cd6268-0c7d-4392-aa26-d281d1f04358"
  name          = "...my_name..."
  workspace_id  = "18b7e27a-33b2-4cf8-9366-9a30dabc6cf0"
}