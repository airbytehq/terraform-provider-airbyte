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
      role           = "AIRBYTE_ROLE"
      username       = "AIRBYTE_USER"
      warehouse      = "AIRBYTE_WAREHOUSE"
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 2
      chunk_size    = 0
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
  definition_id = "6a04bb96-66e7-4d15-a7ee-dd4643586b68"
  name          = "Tommie Sporer I"
  workspace_id  = "c292fcfa-b73b-49ba-9d30-45674ad28dce"
}