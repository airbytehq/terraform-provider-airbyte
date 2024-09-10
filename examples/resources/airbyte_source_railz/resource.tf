resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "a0917a61-51fa-4c3e-8ec6-9babb338974c"
  name          = "Paul Spencer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9af2319a-6f88-498d-b4d7-cd0670b63c63"
}