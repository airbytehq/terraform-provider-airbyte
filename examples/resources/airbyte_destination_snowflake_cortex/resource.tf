resource "airbyte_destination_snowflake_cortex" "my_destination_snowflakecortex" {
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
      role           = "ACCOUNTADMIN"
      username       = "AIRBYTE_USER"
      warehouse      = "AIRBYTE_WAREHOUSE"
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 5
      chunk_size    = 4
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
          split_level = 7
        }
      }
    }
  }
  definition_id = "8b9fef8f-5387-46e3-9e30-a86e4df19faa"
  name          = "Willard Gerhold"
  workspace_id  = "1846ef36-4419-46a0-8bb9-666e7d15e7ee"
}