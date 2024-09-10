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
  definition_id = "d654173c-ccbb-4c51-a3ca-a62e557cba0d"
  name          = "Mr. Sherry Leuschke"
  workspace_id  = "a5767fcf-379f-4a40-91ea-e8db1144f7f4"
}