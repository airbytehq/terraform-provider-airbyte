resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      source_square_api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = false
    start_date              = "2022-08-24"
  }
  name         = "Mr. Willie Kris"
  secret_id    = "...my_secret_id..."
  workspace_id = "d7a7ec19-1626-447e-a80e-4417c6f4b509"
}