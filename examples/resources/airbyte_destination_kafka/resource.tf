resource "airbyte_destination_kafka" "my_destination_kafka" {
  configuration = {
    acks                                  = "all"
    additional_properties                 = "{ \"see\": \"documentation\" }"
    batch_size                            = 16384
    bootstrap_servers                     = "kafka-broker1:9092,kafka-broker2:9092"
    buffer_memory                         = 33554432
    client_dns_lookup                     = "use_all_dns_ips"
    client_id                             = "airbyte-producer"
    compression_type                      = "none"
    delivery_timeout_ms                   = 120000
    enable_idempotence                    = false
    linger_ms                             = 0
    max_block_ms                          = 60000
    max_in_flight_requests_per_connection = 5
    max_request_size                      = 1048576
    protocol = {
      # ...
    }
    receive_buffer_bytes                   = 32768
    request_timeout_ms                     = 30000
    retries                                = 2147483647
    send_buffer_bytes                      = 131072
    socket_connection_setup_timeout_max_ms = 30000
    socket_connection_setup_timeout_ms     = 10000
    sync_producer                          = false
    test_topic                             = "test.topic"
    topic_pattern                          = "sample.topic"
  }
  definition_id = "9b27ec9b-64f6-46b9-b65b-698023e603c3"
  name          = "...my_name..."
  workspace_id  = "36bd7644-dd78-4484-93ec-f85297476150"
}