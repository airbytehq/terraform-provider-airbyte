resource "airbyte_source_whisky_hunter" "my_source_whiskyhunter" {
  configuration = {
    # ...
  }
  definition_id = "356ef044-dc9e-48e1-b9c5-549170dabd2e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf45da40-f2db-4128-9e66-10704a98b249"
}