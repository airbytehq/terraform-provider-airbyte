resource "airbyte_destination_pinecone" "my_destination_pinecone" {
  configuration = {
    destination_type = "pinecone"
    embedding = {
      destination_pinecone_embedding_cohere = {
        cohere_key = "...my_cohere_key..."
        mode       = "cohere"
      }
    }
    indexing = {
      index                = "...my_index..."
      pinecone_environment = "...my_pinecone_environment..."
      pinecone_key         = "...my_pinecone_key..."
    }
    processing = {
      chunk_overlap = 2
      chunk_size    = 3
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Cecelia Braun"
  workspace_id = "8b6a89fb-e3a5-4aa8-a482-4d0ab4075088"
}