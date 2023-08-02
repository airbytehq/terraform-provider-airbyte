resource "airbyte_source_faker" "my_source_faker" {
    configuration = {
        count = 0
        parallelism = 10
        records_per_slice = 3
        records_per_sync = 4
        seed = 1
        source_type = "faker"
    }
            name = "Vickie Welch"
            workspace_id = "639a910a-bdca-4b62-a766-96e1ec00221b"
        }