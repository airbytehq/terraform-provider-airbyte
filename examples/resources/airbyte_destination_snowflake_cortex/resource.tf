resource "airbyte_destination_snowflake_cortex" "my_destination_snowflakecortex" {
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
      credentials = {
        password = "AIRBYTE_PASSWORD"
      }
      database       = "AIRBYTE_DATABASE"
      default_schema = "AIRBYTE_SCHEMA"
      host           = "AIRBYTE_ACCOUNT"
      role           = "AIRBYTE_ROLE"
      username       = "AIRBYTE_USER"
      warehouse      = "AIRBYTE_WAREHOUSE"
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 3
      chunk_size    = 6147
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
          split_level = 3
        }
        by_programming_language = {
          language = "rst"
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
  definition_id = "4e970f65-b8a4-4398-b19e-2a5644731a72"
  name          = "...my_name..."
  workspace_id  = "d33dd7fd-91b5-4245-9a6e-0c987c8003c9"
}