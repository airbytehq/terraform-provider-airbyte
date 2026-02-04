resource "airbyte_destination_rabbitmq" "my_destination_rabbitmq" {
  configuration = {
    exchange     = "...my_exchange..."
    host         = "...my_host..."
    password     = "...my_password..."
    port         = 4
    routing_key  = "...my_routing_key..."
    ssl          = true
    username     = "...my_username..."
    virtual_host = "...my_virtual_host..."
  }
  definition_id = "880a219a-cac7-4bca-955f-503a4af3bd88"
  name          = "...my_name..."
  workspace_id  = "e085c9bd-e32d-4cb1-8d84-b8ffb4aaa552"
}