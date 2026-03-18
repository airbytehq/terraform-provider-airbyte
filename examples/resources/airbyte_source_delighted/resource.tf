resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    since                 = "2022-05-30T04:50:23Z"
  }
  definition_id = "cc88c43f-6f53-4e8a-8c4d-b284baaf9635"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8b7a745-6e54-4a64-b6b8-c11deac52738"
}