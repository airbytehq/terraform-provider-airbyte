resource "airbyte_destination_scylla" "my_destination_scylla" {
  configuration = {
    address          = "520 Stark Corners"
    destination_type = "scylla"
    keyspace         = "...my_keyspace..."
    password         = "...my_password..."
    port             = 4
    replication      = 1
    username         = "Daron_Beahan"
  }
  name         = "John Monahan"
  workspace_id = "921aefb9-f58c-44d8-ae68-e4be056013f5"
}