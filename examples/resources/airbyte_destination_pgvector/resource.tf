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
        by_programming_language = {
          language = "js"
        }
      }
    }
  }
  definition_id = "ace91495-b654-40da-a8bd-73a5b3a4b3ee"
  name          = "...my_name..."
  workspace_id  = "0b8f211f-70ad-47f2-a6ea-1e915e8005be"
}