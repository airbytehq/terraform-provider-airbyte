resource "airbyte_destination_teradata" "my_destination_teradata" {
  configuration = {
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    schema          = "airbyte_td"
    ssl             = false
    ssl_mode = {
      # ...
    }
    username = "...my_username..."
  }
  definition_id = "d113370e-613a-4d8a-8685-e4d05d32dcea"
  name          = "...my_name..."
  workspace_id  = "a9f65ee8-669c-48fd-aadc-bf3b835fc521"
}