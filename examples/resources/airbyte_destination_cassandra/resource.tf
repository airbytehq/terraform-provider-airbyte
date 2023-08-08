resource "airbyte_destination_cassandra" "my_destination_cassandra" {
  configuration = {
    address          = "localhost,127.0.0.1"
    datacenter       = "...my_datacenter..."
    destination_type = "cassandra"
    keyspace         = "...my_keyspace..."
    password         = "...my_password..."
    port             = 9
    replication      = 2
    username         = "Rachel.Lind10"
  }
  name         = "Elvira Herman"
  workspace_id = "fd2ed028-921c-4ddc-a926-01fb576b0d5f"
}