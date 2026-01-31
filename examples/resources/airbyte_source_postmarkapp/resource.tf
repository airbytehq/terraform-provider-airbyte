resource "airbyte_source_postmarkapp" "my_source_postmarkapp" {
  configuration = {
    additional_properties    = "{ \"see\": \"documentation\" }"
    x_postmark_account_token = "...my_x_postmark_account_token..."
    x_postmark_server_token  = "...my_x_postmark_server_token..."
  }
  definition_id = "7933a010-7479-45be-8bd6-de6679816cf7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bf4e5c3-18fe-4aac-ae32-15a37cb98b40"
}