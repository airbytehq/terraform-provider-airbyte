resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "d48e30cc-cb1d-439d-9fc6-49b7a58a5636"
  name          = "Anna Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "38f32285-6cd8-48e7-a494-b9e5830e9efb"
}