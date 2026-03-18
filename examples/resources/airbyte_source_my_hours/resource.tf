resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    email                 = "john@doe.com"
    logs_batch_size       = 30
    password              = "...my_password..."
    start_date            = "%Y-%m-%d"
  }
  definition_id = "722ba4bf-06ec-45a4-8dd5-72e4a5cf3903"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b63b6385-c282-4a24-b2df-4452ed4c92a3"
}