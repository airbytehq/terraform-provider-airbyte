resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    end_date              = 1666281656
    start_date            = 1666261656
    token                 = "...my_token..."
  }
  definition_id = "8d2d57af-c707-47f6-9874-0cf4bb73f66c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b9bc8b7b-3b26-4253-a0c0-614a8184ad04"
}