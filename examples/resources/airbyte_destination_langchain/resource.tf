resource "airbyte_destination_langchain" "my_destination_langchain" {
  configuration = {
    embedding = {
      fake = {}
    }
    indexing = {
      chroma_local_persistance = {
        collection_name  = "...my_collection_name..."
        destination_path = "/local/my_chroma_db"
      }
    }
    processing = {
      chunk_overlap = 10
      chunk_size    = 0
      text_fields = [
        "...",
      ]
    }
  }
  definition_id = "f39a6c15-1a78-4cf1-bc35-89bc3eaba63d"
  name          = "Lindsay Labadie"
  workspace_id  = "09ed832d-18dd-4dbe-b1f8-7bb5069e16a5"
}