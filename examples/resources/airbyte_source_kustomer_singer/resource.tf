resource "airbyte_source_kustomer_singer" "my_source_kustomersinger" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "2019-01-01T00:00:00Z"
  }
  definition_id = "de0f8a2b-57ad-4de2-8e75-111fd0612ffd"
  name          = "Mr. Antonia Yost"
  secret_id     = "...my_secret_id..."
  workspace_id  = "78b38595-7e3c-4921-8c92-84a21155c549"
}