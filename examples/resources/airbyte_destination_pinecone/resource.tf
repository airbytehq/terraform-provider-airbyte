resource "airbyte_destination_pinecone" "my_destination_pinecone" {
  configuration = {
    embedding = {
      destination_pinecone_embedding_cohere = {
        cohere_key = "...my_cohere_key..."
      }
    }
    indexing = {
      index                = "...my_index..."
      pinecone_environment = "...my_pinecone_environment..."
      pinecone_key         = "...my_pinecone_key..."
    }
    processing = {
      chunk_overlap = 7
      chunk_size    = 6
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Peggy Renner"
  workspace_id = "88e15f86-8bf0-4372-97dc-d66bcb9a13f0"
}