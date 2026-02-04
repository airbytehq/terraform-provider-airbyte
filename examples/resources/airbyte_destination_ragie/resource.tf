resource "airbyte_destination_ragie" "my_destination_ragie" {
  configuration = {
    api_key = "tn_******"
    api_url = "https://api.ragie.ai"
    content_fields = [
      "..."
    ]
    document_name_field = "ticket_id"
    external_id_field   = "event_id"
    metadata_fields = [
      "..."
    ]
    metadata_static = "{\"source\": \"airbyte\", \"env\": \"production\"}"
    partition       = "support_tickets"
    processing_mode = "fast"
  }
  definition_id = "f1ab076b-0e51-476e-8e65-e0ac9cb7c228"
  name          = "...my_name..."
  workspace_id  = "7bb8301d-a76c-4a66-9278-a300b802935d"
}