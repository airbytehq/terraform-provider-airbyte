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
    username = "Arch_Stehr"
  }
  definition_id = "d713664c-8ab0-488c-a48e-91396f340754"
  name          = "Mr. Eula Heidenreich"
  workspace_id  = "86d04e60-8039-4bc7-ab07-32a47524bb49"
}