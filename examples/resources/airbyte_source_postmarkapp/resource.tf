resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    additional_properties    = "{ \"see\": \"documentation\" }"
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "cde75ca1-1e28-4a0f-85bb-90c546de9f1f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bf4e5c3-18fe-4aac-ae32-15a37cb98b40"
}