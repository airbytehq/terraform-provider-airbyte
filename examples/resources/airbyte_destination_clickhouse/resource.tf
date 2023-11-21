resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Rhianna_Leannon"
  }
  definition_id = "2c276398-b468-48ad-b426-53c327fa18b5"
  name          = "Gerardo Corwin"
  workspace_id  = "4f41e22e-39b6-461a-89af-71290b2c6d65"
}