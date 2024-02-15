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
      chunk_overlap = 1
      chunk_size    = 5
      text_fields = [
        "...",
      ]
    }
  }
  definition_id = "2d15ef4e-895c-4921-a618-452d1432f338"
  name          = "Allan Witting"
  workspace_id  = "4ca4c8c4-bf88-4272-9c3c-6bc39a6d3f39"
}