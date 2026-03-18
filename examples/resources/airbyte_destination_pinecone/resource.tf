resource "airbyte_destination_pinecone" "my_destination_pinecone" {
  configuration = {
    embedding = {
      fake = {
        # ...
      }
    }
    indexing = {
      index                = "...my_index..."
      pinecone_environment = "us-west1-gcp"
      pinecone_key         = "...my_pinecone_key..."
    }
    omit_raw_text = false
    processing = {
      chunk_overlap = 0
      chunk_size    = 7074
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
          keep_separator = false
          separators = [
            "..."
          ]
        }
      }
    }
  }
  definition_id = "3d2b6f84-7f0d-4e3f-a5e5-7c7d4b50eabd"
  name          = "...my_name..."
  workspace_id  = "a8bd2b0a-cdce-4816-9962-7547715c4567"
}