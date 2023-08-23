resource "airbyte_destination_langchain" "my_destination_langchain" {
  configuration = {
    destination_type = "langchain"
    embedding = {
      destination_langchain_embedding_fake = {
        mode = "fake"
      }
    }
    indexing = {
      destination_langchain_indexing_chroma_local_persistance_ = {
        collection_name  = "...my_collection_name..."
        destination_path = "/local/my_chroma_db"
        mode             = "chroma_local"
      }
    }
    processing = {
      chunk_overlap = 1
      chunk_size    = 1
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Shannon Jacobi DVM"
  workspace_id = "674bdb04-f157-4560-82d6-8ea19f1d1705"
}