resource "airbyte_destination_teradata" "my_destination_teradata" {
  configuration = {
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    schema          = "airbyte_td"
    ssl             = false
    ssl_mode = {
      allow = {}
    }
    username = "Rafaela55"
  }
  definition_id = "10858467-e5cd-4333-a85c-7cc3fde334f7"
  name          = "Ben Pacocha"
  workspace_id  = "3aaf527f-e19e-4b1b-b8ee-2339467597e8"
}