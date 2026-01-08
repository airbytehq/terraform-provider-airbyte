terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = ">= 0.10.0"
    }
  }
}

locals {
  definition_id = "a7bcc9d8-13b3-4e49-b80d-d020b90045e3"
}

resource "airbyte_destination_custom" "destination-dev-null" {
  workspace_id  = var.workspace_id
  name          = var.name
  definition_id = local.definition_id

  configuration = jsonencode(
    merge(
      {},
      var.test_destination_logging_config != null && var.test_destination_millis_per_record != null && var.test_destination_num_messages != null && var.test_destination_test_destination_type != null ? { test_destination = merge(
          {},
          var.test_destination_test_destination_type != null ? { test_destination_type = var.test_destination_test_destination_type } : {} ,
          var.test_destination_logging_config != null ? { logging_config = var.test_destination_logging_config } : {} ,
          var.test_destination_millis_per_record != null ? { millis_per_record = var.test_destination_millis_per_record } : {} ,
          var.test_destination_num_messages != null ? { num_messages = var.test_destination_num_messages } : {} ,
        ) } : {} ,
    )
  )
}
