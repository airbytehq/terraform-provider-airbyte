resource "airbyte_source_alloydb" "my_source_alloydb" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      source_alloydb_replication_method_logical_replication_cdc = {
        additional_properties   = "{ \"see\": \"documentation\" }"
        initial_waiting_seconds = 1
        lsn_commit_behaviour    = "After loading Data in the destination"
        plugin                  = "pgoutput"
        publication             = "...my_publication..."
        queue_size              = 4
        replication_slot        = "...my_replication_slot..."
      }
    }
    schemas = [
      "...",
    ]
    ssl_mode = {
      source_alloydb_ssl_modes_allow = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    tunnel_method = {
      source_alloydb_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Mackenzie83"
  }
  name         = "Robin Kuhn"
  secret_id    = "...my_secret_id..."
  workspace_id = "3598ffb0-4292-44fa-aae5-018c31937409"
}