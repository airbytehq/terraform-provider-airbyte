resource "airbyte_source_reply_io" "my_source_replyio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "74c5b63e-c818-4f18-bb88-2cbeae43dd1e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fb5f11e4-3656-48e7-8457-61d7f199ca4b"
}