resource "airbyte_destination_astra" "my_destination_astra" {
  configuration = {
    embedding = {
      azure_open_ai = {
        api_base   = "https://your-resource-name.openai.azure.com"
        deployment = "your-resource-name"
        openai_key = "...my_openai_key..."
      }
    }
    indexing = {
      astra_db_app_token = "...my_astra_db_app_token..."
      astra_db_endpoint  = "https://8292d414-dd1b-4c33-8431-e838bedc04f7-us-east1.apps.astra.datastax.com"
      astra_db_keyspace  = "...my_astra_db_keyspace..."
      collection         = "...my_collection..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 0
      chunk_size    = 8
      field_name_mappings = [
        {
          from_field = "...my_from_field..."
          to_field   = "...my_to_field..."
        },
      ]
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
      text_splitter = {
        by_markdown_header = {
          split_level = 8
        }
      }
    }
  }
  definition_id = "97ea6dfc-635b-480f-aa9b-0de1497ac862"
  name          = "Darnell Hills"
  workspace_id  = "9ed4a852-e76a-42f8-9fb9-aea60f386615"
}