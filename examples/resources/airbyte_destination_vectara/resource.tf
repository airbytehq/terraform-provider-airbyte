resource "airbyte_destination_vectara" "my_destination_vectara" {
  configuration = {
    corpus_name = "...my_corpus_name..."
    customer_id = "...my_customer_id..."
    metadata_fields = [
      "...",
    ]
    oauth2 = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    parallelize = false
    text_fields = [
      "...",
    ]
    title_field = "document_key"
  }
  definition_id = "28dce71d-7fd7-4136-a4c8-ab088c248e91"
  name          = "Bobbie Johns"
  workspace_id  = "407545d5-0068-46d0-8e60-8039bc7eb073"
}