resource "airbyte_destination_databend" "my_destination_databend" {
  configuration = {
    database = "...my_database..."
    host     = "...my_host..."
    password = "...my_password..."
    port     = 443
    table    = "default"
    username = "Anjali_McLaughlin1"
  }
  definition_id = "2e07129d-4644-4f9d-93d5-4c7cfb82ef1e"
  name          = "Doris Ward"
  workspace_id  = "7477c9e2-c85c-4904-a203-ff157a47112d"
}