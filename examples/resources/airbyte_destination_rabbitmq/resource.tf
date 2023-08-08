resource "airbyte_destination_rabbitmq" "my_destination_rabbitmq" {
  configuration = {
    destination_type = "rabbitmq"
    exchange         = "...my_exchange..."
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 0
    routing_key      = "...my_routing_key..."
    ssl              = true
    username         = "Winfield_Herman"
    virtual_host     = "...my_virtual_host..."
  }
  name         = "Oliver Osinski"
  workspace_id = "f9efc1b4-512c-4103-a648-dc2f615199eb"
}