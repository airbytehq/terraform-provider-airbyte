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
    username = "Rocio.Gibson"
  }
  definition_id = "3586b689-fdc1-43c2-92fc-fab73b9ba5d3"
  name          = "Amber Hansen"
  workspace_id  = "4ad28dce-71d7-4fd7-9366-4c8ab088c248"
}