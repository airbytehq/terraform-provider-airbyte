resource "airbyte_destination_pulsar" "my_destination_pulsar" {
  configuration = {
    batching_enabled                       = true
    batching_max_messages                  = 5
    batching_max_publish_delay             = 0
    block_if_queue_full                    = true
    brokers                                = "broker1:6650,broker2:6650"
    compression_type                       = "SNAPPY"
    destination_type                       = "pulsar"
    max_pending_messages                   = 2
    max_pending_messages_across_partitions = 8
    producer_name                          = "airbyte-producer"
    producer_sync                          = false
    send_timeout_ms                        = 9
    topic_namespace                        = "default"
    topic_pattern                          = "sample.topic"
    topic_tenant                           = "public"
    topic_test                             = "test.topic"
    topic_type                             = "non-persistent"
    use_tls                                = true
  }
  name         = "Jordan Haag"
  workspace_id = "0597a60f-f2a5-44a3-9e94-764a3e865e79"
}