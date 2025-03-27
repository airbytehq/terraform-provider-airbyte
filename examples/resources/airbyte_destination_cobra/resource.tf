resource "airbyte_destination_cobra" "my_destination_cobra" {
  configuration = {
    client_id                     = "...my_client_id..."
    client_secret                 = "...my_client_secret..."
    is_sandbox                    = true
    print_record_content_on_error = false
    refresh_token                 = "...my_refresh_token..."
    stream_mappings = [
      {
        destination_table = "...my_destination_table..."
        source_stream     = "...my_source_stream..."
        update_mode       = "DELETE"
        upsert_key        = "...my_upsert_key..."
      }
    ]
    stream_order = [
      "..."
    ]
  }
  definition_id = "639ce355-2f32-46fc-b636-542060b9a351"
  name          = "...my_name..."
  workspace_id  = "7743f23f-cbcc-4682-9621-edebf51717cf"
}