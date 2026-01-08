terraform {
    required_providers {
        airbyte = {
        source = "airbytehq/airbyte"
        version = "0.13.0"
        }
    }
}

provider "airbyte" {
    client_id = var.client_id
    client_secret = var.client_secret

    # testing againt airbyte Self-Managed Enterprise v2.0.1
    server_url = "https://airbyte-enterprise.conall.org/api/public/v1/"
}

## create a dev/null destination

resource "airbyte_destination_dev_null" "my_destination_devnull" {
  name         = "dev-null-terraform"
  workspace_id = var.workspace_id
  definition_id = "a7bcc9d8-13b3-4e49-b80d-d020b90045e3"
  configuration = {
      test_destination = {
        logging = {
          logging_config = {
            first_n_entries = {
              logging_type = "FirstN"
              max_entry_count = 100
          },
          test_destination_type = "LOGGING"
        }
      }
    }
  }
}


# make a declarative source
resource "airbyte_declarative_source_definition" "exchange_rates" {
  manifest     = jsonencode(yamldecode(file("custom_sources/exchange_rates.yaml")))
  name         = "exchange_rates"
  workspace_id = var.workspace_id
}

# instantiate the declarative source we just created
resource "airbyte_source_custom" "my_exchange_rates" {
  definition_id = airbyte_declarative_source_definition.exchange_rates.id 
  configuration = jsonencode({
    start_date = "2025-07-01T00:00:00Z",
    api_key    = var.exchange_rates_api_key,
    base       = "USD"
  })
  name          = "exchange rates"
  workspace_id  = var.workspace_id
}


# connect the declarative source referencing an existing destination

 resource "airbyte_connection" "tf_custom_declarative_definition_example" {
   destination_id                       = airbyte_destination_dev_null.my_destination_devnull.destination_id
   name                                 = "tf_custom_declarative_definition_example"
   namespace_definition                 = "custom_format"
   namespace_format                     = "MY_NAMESPACE"
   non_breaking_schema_updates_behavior = "propagate_fully"
   source_id                            = airbyte_source_custom.my_exchange_rates.source_id
   schedule = {
     schedule_type   = "cron"
     cron_expression = "0 0 8 * * ? UTC"
   }
   status = "active"

   configurations = {
     streams = [
       {
         name      = "Rates"
         sync_mode = "full_refresh_overwrite"
       },
     ]
   }
 }
