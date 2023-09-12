resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "k6-cloud"
  }
  name         = "Ella Runolfsdottir"
  secret_id    = "...my_secret_id..."
  workspace_id = "8f9fdb94-10f6-43bb-b817-837b01afdd78"
}