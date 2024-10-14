resource "airbyte_destination_pgvector" "my_destination_pgvector" {
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
      port           = 5432
      username       = "AIRBYTE_USER"
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 7
      chunk_size    = 8035
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
          split_level = 5
        }
        by_programming_language = {
          language = "js"
        }
        by_separator = {
          keep_separator = false
          separators = [
            "..."
          ]
        }
      }
    }
  }
  definition_id = "ace91495-b654-40da-a8bd-73a5b3a4b3ee"
  name          = "...my_name..."
  workspace_id  = "0b8f211f-70ad-47f2-a6ea-1e915e8005be"
}