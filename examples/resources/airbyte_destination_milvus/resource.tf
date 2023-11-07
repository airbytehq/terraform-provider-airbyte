resource "airbyte_destination_milvus" "my_destination_milvus" {
  configuration = {
    embedding = {
      cohere = {
        cohere_key = "...my_cohere_key..."
      }
    }
    indexing = {
      auth = {
        destination_milvus_api_token = {
          token = "...my_token..."
        }
      }
      collection   = "...my_collection..."
      db           = "...my_db..."
      host         = "tcp://my-local-milvus:19530"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    processing = {
      chunk_overlap = 4
      chunk_size    = 6
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Kelli Bashirian"
  workspace_id = "5aa0db79-7942-4be7-a5f1-f78855663545"
}