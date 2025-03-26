resource "airbyte_destination_snowflake_cortex" "my_destination_snowflakecortex" {
  configuration = {
    embedding = {
      fake = {
        # ...
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