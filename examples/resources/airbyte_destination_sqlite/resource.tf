resource "airbyte_destination_sqlite" "my_destination_sqlite" {
  configuration = {
    destination_path = "/local/sqlite.db"
  }
  definition_id = "105bf6d1-9e82-4dc1-9981-3c74b4fd6508"
  name          = "...my_name..."
  workspace_id  = "f84a6006-3d0b-4f14-915b-e5c6b6fbe032"
}