resource "airbyte_destination_milvus" "my_destination_milvus" {
  configuration = {
    destination_type = "milvus"
    embedding = {
      destination_milvus_embedding_cohere = {
        cohere_key = "...my_cohere_key..."
        mode       = "cohere"
      }
    }
    indexing = {
      auth = {
        destination_milvus_indexing_authentication_api_token = {
          mode  = "token"
          token = "...my_token..."
        }
      }
      collection   = "...my_collection..."
      db           = "...my_db..."
      host         = "https://my-instance.zone.zillizcloud.com"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    processing = {
      chunk_overlap = 3
      chunk_size    = 0
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Sherry Morar IV"
  workspace_id = "086a1840-394c-4260-b1f9-3f5f0642dac7"
}