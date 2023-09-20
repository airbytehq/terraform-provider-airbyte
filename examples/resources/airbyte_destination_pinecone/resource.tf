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
      pinecone_environment = "us-west1-gcp"
      pinecone_key         = "...my_pinecone_key..."
    }
    processing = {
      chunk_overlap = 3
      chunk_size    = 4
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Jack Langworth"
  workspace_id = "b6a89fbe-3a5a-4a8e-8824-d0ab4075088e"
}