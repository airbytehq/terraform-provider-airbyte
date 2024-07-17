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
  definition_id = "173cccbb-c51a-43ca-a62e-557cba0d3380"
  name          = "Beverly Murray"
  workspace_id  = "67fcf379-fa40-411e-ae8d-b1144f7f4dcb"
}