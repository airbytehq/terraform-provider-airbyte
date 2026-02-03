resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "1ae5ddc1-32e1-440d-abfd-bbc323d309da"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "03e45880-e36d-4da5-991d-5ad676e17dd1"
}