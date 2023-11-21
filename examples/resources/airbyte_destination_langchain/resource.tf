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
      chunk_overlap = 8
      chunk_size    = 3
      text_fields = [
        "...",
      ]
    }
  }
  definition_id = "0c9ec767-47b0-46cf-86fe-4a6f8bb810ed"
  name          = "Megan Kertzmann"
  workspace_id  = "02e7b218-3b2b-4c4f-adb7-afdacad2c14c"
}