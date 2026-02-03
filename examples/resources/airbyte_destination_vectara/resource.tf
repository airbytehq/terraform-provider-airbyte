resource "airbyte_destination_vectara" "my_destination_vectara" {
  configuration = {
    corpus_name = "...my_corpus_name..."
    customer_id = "...my_customer_id..."
    metadata_fields = [
      "..."
    ]
    oauth2 = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    parallelize = true
    text_fields = [
      "..."
    ]
    title_field = "document_key"
  }
  definition_id = "ac173292-6bf8-4462-bbfa-4dfe841fa692"
  name          = "...my_name..."
  workspace_id  = "83b24974-78f7-4174-9db4-d0c0c51118e8"
}