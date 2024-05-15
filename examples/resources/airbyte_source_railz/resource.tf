resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "a84a4e28-fea1-40a8-a64b-77a4fe630392"
  name          = "Alberto Schroeder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "001e515b-2e74-4052-aa67-dad65e8ae1d2"
}