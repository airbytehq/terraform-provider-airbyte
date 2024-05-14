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
    username = "Shea_Wilderman"
  }
  definition_id = "ed3651e7-d549-4673-9da2-13c86a8b9fef"
  name          = "Darnell Halvorson"
  workspace_id  = "76e3de30-a86e-44df-99fa-ac84c31846ef"
}