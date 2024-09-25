resource "airbyte_source_leadfeeder" "my_source_leadfeeder" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "2022-05-11T13:38:36.742Z"
  }
  definition_id = "7ba288f1-0a06-435f-b19f-388685d8941e"
  name          = "Ms. Hope Rogahn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3f94739c-c80e-4e5b-b122-5778f7a023c1"
}