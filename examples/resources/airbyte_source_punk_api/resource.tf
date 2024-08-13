resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
  }
  definition_id = "d21cf346-58e5-420f-854a-567309cc0ee4"
  name          = "Randolph Murphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aed57205-4daa-484a-8e28-fea10a8a64b7"
}