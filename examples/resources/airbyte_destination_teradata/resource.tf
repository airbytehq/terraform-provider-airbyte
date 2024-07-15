resource "airbyte_destination_teradata" "my_destination_teradata" {
  configuration = {
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    schema          = "airbyte_td"
    ssl             = true
    ssl_mode = {
      allow = {}
    }
    username = "Lillian.Keebler"
  }
  definition_id = "4bb9666e-7d15-4e7e-add4-643586b689fd"
  name          = "Eric Fadel"
  workspace_id  = "92fcfab7-3b9b-4a5d-b045-674ad28dce71"
}