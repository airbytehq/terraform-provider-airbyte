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
      chunk_overlap = 7
      chunk_size    = 3
      text_fields = [
        "...",
      ]
    }
  }
  definition_id = "a735a4e1-8012-43f0-976f-b78bf74fa22d"
  name          = "Jack Christiansen"
  workspace_id  = "1b5f134d-0007-4497-b4ae-87c30892ffb0"
}