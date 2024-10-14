resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    test_destination = {
      failing = {
        num_messages = 6
      }
      logging = {
        logging_config = {
          every_n_th_entry = {
            logging_type     = "EveryNth"
            max_entry_count  = 100
            nth_entry_to_log = 3
          }
          first_n_entries = {
            logging_type    = "FirstN"
            max_entry_count = 100
          }
          random_sampling = {
            logging_type    = "RandomSampling"
            max_entry_count = 100
            sampling_ratio  = 0.001
            seed            = 1900
          }
        }
      }
      silent = {
        # ...
      }
      throttled = {
        millis_per_record = 2
      }
    }
  }
  definition_id = "63267a08-3f09-4c32-aaf8-b026c7113191"
  name          = "...my_name..."
  workspace_id  = "cc83846a-3f2a-410d-b012-72b8713131bd"
}