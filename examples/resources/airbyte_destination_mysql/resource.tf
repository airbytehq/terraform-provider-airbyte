resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    tunnel_method = {
      destination_mysql_no_tunnel = {}
    }
    username = "Elissa16"
  }
  definition_id = "a53050a9-afbc-466c-913a-5b78062a6a13"
  name          = "Nick Rogahn"
  workspace_id  = "63598ffb-0429-424f-aeae-5018c3193740"
}