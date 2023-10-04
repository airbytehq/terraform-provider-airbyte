resource "airbyte_destination_langchain" "my_destination_langchain" {
  configuration = {
    embedding = {
      destination_langchain_embedding_fake = {}
    }
    indexing = {
      destination_langchain_indexing_chroma_local_persistance = {
        collection_name  = "...my_collection_name..."
        destination_path = "/local/my_chroma_db"
      }
    }
    processing = {
      chunk_overlap = 3
      chunk_size    = 2
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Randal Goyette"
  workspace_id = "07f993ef-ae2d-4caf-8658-9dab1153f466"
}