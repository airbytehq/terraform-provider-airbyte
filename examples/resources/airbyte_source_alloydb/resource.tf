resource "airbyte_source_alloydb" "my_source_alloydb" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      source_alloydb_replication_method_logical_replication_cdc_ = {
        initial_waiting_seconds = 2
        lsn_commit_behaviour    = "While reading Data"
        method                  = "CDC"
        plugin                  = "pgoutput"
        publication             = "...my_publication..."
        queue_size              = 10
        replication_slot        = "...my_replication_slot..."
      }
    }
    schemas = [
      "...",
    ]
    source_type = "alloydb"
    ssl_mode = {
      source_alloydb_ssl_modes_allow = {
        mode = "allow"
      }
    }
    tunnel_method = {
      source_alloydb_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Ashlynn_Emard"
  }
  name         = "Wilbert Crona"
  secret_id    = "...my_secret_id..."
  workspace_id = "9b1abda8-c070-4e10-84cb-0672d1ad879e"
}