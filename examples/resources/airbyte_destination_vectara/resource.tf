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
  definition_id = "50b4e344-126e-47f2-9336-e237818d1537"
  name          = "Christie Pfeffer"
  workspace_id  = "6eef0475-7630-4ddb-82db-f188dfabd571"
}