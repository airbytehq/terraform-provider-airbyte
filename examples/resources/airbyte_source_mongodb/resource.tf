resource "airbyte_source_mongodb" "my_source_mongodb" {
  configuration = {
    auth_source = "admin"
    database    = "...my_database..."
    instance_type = {
      cluster_url = "...my_cluster_url..."
      instance    = "atlas"
    }
    password    = "...my_password..."
    source_type = "mongodb"
    user        = "...my_user..."
  }
  name         = "Emanuel Lemke"
  workspace_id = "9de1dd70-97b5-4da0-8c57-fa6c78a216e1"
}