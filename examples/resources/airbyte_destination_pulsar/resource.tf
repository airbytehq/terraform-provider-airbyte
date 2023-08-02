resource "airbyte_destination_pulsar" "my_destination_pulsar" {
  configuration = {
    batching_enabled                       = false
    batching_max_messages                  = 10
    batching_max_publish_delay             = 0
    block_if_queue_full                    = false
    brokers                                = "broker1:6650,broker2:6650"
    compression_type                       = "ZLIB"
    destination_type                       = "pulsar"
    max_pending_messages                   = 5
    max_pending_messages_across_partitions = 7
    producer_name                          = "airbyte-producer"
    producer_sync                          = false
    send_timeout_ms                        = 0
    topic_namespace                        = "default"
    topic_pattern                          = "{namespace}.{stream}.sample"
    topic_tenant                           = "public"
    topic_test                             = "test.topic"
    topic_type                             = "non-persistent"
    use_tls                                = true
  }
  name         = "Warren Greenholt"
  workspace_id = "1e94764a-3e86-45e7-956f-9251a5a9da66"
}