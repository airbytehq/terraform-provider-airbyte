resource "airbyte_source_alloydb" "my_source_alloydb" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      initial_waiting_seconds = 10
      lsn_commit_behaviour    = "After loading Data in the destination"
      method                  = "CDC"
      plugin                  = "pgoutput"
      publication             = "...my_publication..."
      replication_slot        = "...my_replication_slot..."
    }
    schemas = [
      "...",
    ]
    source_type = "alloydb"
    ssl_mode = {
      mode = "allow"
    }
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Alvis28"
  }
  name         = "Sergio Hirthe"
  workspace_id = "ca5acfbe-2fd5-4707-9779-29177deac646"
}