resource "airbyte_destination_rabbitmq" "my_destination_rabbitmq" {
  configuration = {
    destination_type = "rabbitmq"
    exchange         = "...my_exchange..."
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 3
    routing_key      = "...my_routing_key..."
    ssl              = false
    username         = "Walker35"
    virtual_host     = "...my_virtual_host..."
  }
  name         = "Lynda Heathcote"
  workspace_id = "da660ff5-7bfa-4ad4-b9ef-c1b4512c1032"
}