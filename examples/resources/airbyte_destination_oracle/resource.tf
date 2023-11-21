resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1521
    schema          = "airbyte"
    sid             = "...my_sid..."
    tunnel_method = {
      destination_oracle_no_tunnel = {}
    }
    username = "Abdullah_Ward15"
  }
  definition_id = "2db6fe08-64a8-456a-8417-0ff8566dc323"
  name          = "Brittany Mohr"
  workspace_id  = "b07bf072-8b70-4775-98c6-7348eaa4356f"
}