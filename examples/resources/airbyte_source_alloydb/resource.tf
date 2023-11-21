resource "airbyte_source_alloydb" "my_source_alloydb" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      logical_replication_cdc = {
        additional_properties   = "{ \"see\": \"documentation\" }"
        initial_waiting_seconds = 10
        lsn_commit_behaviour    = "After loading Data in the destination"
        plugin                  = "pgoutput"
        publication             = "...my_publication..."
        queue_size              = 10
        replication_slot        = "...my_replication_slot..."
      }
    }
    schemas = [
      "...",
    ]
    ssl_mode = {
      source_alloydb_allow = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    tunnel_method = {
      source_alloydb_no_tunnel = {}
    }
    username = "Olaf.Emard48"
  }
  definition_id = "44fd252e-57aa-4673-9282-59f0c220e39e"
  name          = "Deborah Stanton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f09fb849-b0bd-4f3d-9ca9-6c63354ae1d2"
}