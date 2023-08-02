resource "airbyte_destination_scylla" "my_destination_scylla" {
  configuration = {
    address          = "61561 Marques Trafficway"
    destination_type = "scylla"
    keyspace         = "...my_keyspace..."
    password         = "...my_password..."
    port             = 10
    replication      = 7
    username         = "Leola50"
  }
  name         = "Oscar Smith"
  workspace_id = "e68e4be0-5601-43f5-9da7-57a59ecfef66"
}