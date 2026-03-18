resource "airbyte_destination_pgvector" "my_destination_pgvector" {
  configuration = {
    embedding = {
      open_ai = {
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
    omit_raw_text = false
    processing = {
      chunk_overlap = 0
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
        by_programming_language = {
          language = "js"
        }
      }
    }
  }
  definition_id = "e0e06cd9-57a9-4d39-b032-bedd874ae875"
  name          = "...my_name..."
  workspace_id  = "0b8f211f-70ad-47f2-a6ea-1e915e8005be"
}