resource "airbyte_destination_dev_null" "my_destination_devnull" {
    configuration = {
        destination_type = "dev-null"
        test_destination =     {
                test_destination_type = "SILENT"
            }
    }
            name = "Dale Boehm"
            workspace_id = "b90f3443-a110-48e0-adcf-4b921879fce9"
        }