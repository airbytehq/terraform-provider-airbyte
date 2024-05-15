resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "Brandyn_Gerhold"
      }
    }
    database = "...my_database..."
    instance_type = {
      mongo_db_atlas = {
        cluster_url = "...my_cluster_url..."
        instance    = "atlas"
      }
    }
    tunnel_method = {
      no_tunnel = {}
    }
  }
  definition_id = "60128338-4bd8-47b5-8ce3-614854333df2"
  name          = "Kendra Hauck"
  workspace_id  = "09f45252-1a04-4787-8c25-4cd184fd116e"
}