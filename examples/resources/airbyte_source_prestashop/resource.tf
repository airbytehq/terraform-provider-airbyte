resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "f014dd9a-f7c7-4e9c-8620-9ea52c707cb0"
  name          = "Rosalie Hagenes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d21cf346-58e5-420f-854a-567309cc0ee4"
}