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
  definition_id = "490aa753-ad11-4902-ba18-8860231ad193"
  name          = "Emilio Gerhold V"
  workspace_id  = "85c92d33-cae7-4edb-801c-239e69c6f21d"
}