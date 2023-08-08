resource "airbyte_source_configcat" "my_source_configcat" {
  configuration = {
    password    = "...my_password..."
    source_type = "configcat"
    username    = "Elena61"
  }
  name         = "Lynne Schroeder"
  secret_id    = "...my_secret_id..."
  workspace_id = "9171b51c-1bdb-41cf-8b88-8ebdfc4ccca9"
}