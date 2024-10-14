resource "airbyte_destination_milvus" "my_destination_milvus" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
      cohere = {
        cohere_key = "...my_cohere_key..."
      }
      fake = {
        # ...
      }
      open_ai = {
        openai_key = "...my_openai_key..."
      }
      open_ai_compatible = {
        api_key    = "...my_api_key..."
        base_url   = "https://your-service-name.com"
        dimensions = 1536
        model_name = "text-embedding-ada-002"
      }
    }
    indexing = {
      auth = {
        api_token = {
          token = "...my_token..."
        }
        no_auth = {
          # ...
        }
        username_password = {
          password = "...my_password..."
          username = "...my_username..."
        }
      }
      collection   = "...my_collection..."
      db           = "...my_db..."
      host         = "https://my-instance.zone.zillizcloud.com"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 4
      chunk_size    = 7640
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
          split_level = 1
        }
        by_programming_language = {
          language = "ruby"
        }
        by_separator = {
          keep_separator = true
          separators = [
            "..."
          ]
        }
      }
    }
  }
  definition_id = "ef42b409-b99a-4d1e-b7d4-f74e61200199"
  name          = "...my_name..."
  workspace_id  = "1da00420-023b-48f0-a8d8-4c9079cc6179"
}