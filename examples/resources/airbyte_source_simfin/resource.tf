resource "airbyte_source_simfin" "my_source_simfin" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "1cd53348-a6a2-40e9-b659-09693a3422d6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4be9a88-68ae-4fe4-8f44-4bbce6a8321b"
}