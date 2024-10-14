resource "airbyte_source_scryfall" "my_source_scryfall" {
  configuration = {
    # ...
  }
  definition_id = "130eb121-bd2c-4b1b-a148-a5141ee8ecdf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "45de241e-8298-4844-ae8c-ea9fe7627133"
}