resource "airbyte_source_kafka" "my_source_kafka" {
  configuration = {
    additional_properties   = "{ \"see\": \"documentation\" }"
    auto_commit_interval_ms = 1
    auto_offset_reset       = "latest"
    bootstrap_servers       = "kafka-broker1:9092,kafka-broker2:9092"
    client_dns_lookup       = "default"
    client_id               = "airbyte-consumer"
    enable_auto_commit      = true
    group_id                = "group.id"
    max_poll_records        = 10
    max_records_process     = 5
    message_format = {
      json = {
        # ...
      }
    }
    polling_time = 10
    protocol = {
      plaintext = {
        # ...
      }
    }
    receive_buffer_bytes = 10
    repeated_calls       = 4
    request_timeout_ms   = 1
    retry_backoff_ms     = 0
    subscription = {
      manually_assign_a_list_of_partitions = {
        topic_partitions = "sample.topic:0, sample.topic:1"
      }
    }
    test_topic = "test.topic"
  }
  definition_id = "5cfd146d-2fb8-44e3-ab5f-29b1e6532e32"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d4313f7-30f6-4163-b47d-5b06f01eb908"
}