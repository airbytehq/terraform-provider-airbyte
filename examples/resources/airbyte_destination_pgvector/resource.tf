resource "airbyte_destination_pgvector" "my_destination_pgvector" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
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
      chunk_overlap = 1
      chunk_size    = 10
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
  definition_id = "3897fec4-ca4c-48c4-bf88-2725c3c6bc39"
  name          = "Tyler Smith"
  workspace_id  = "396b39ea-0e10-4165-90e1-a2bc7de0ff63"
}