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
  definition_id = "e557cba0-d338-4002-a576-7fcf379fa401"
  name          = "Kellie Oberbrunner"
  workspace_id  = "db1144f7-f4dc-4b28-9085-8467e5cd3332"
}