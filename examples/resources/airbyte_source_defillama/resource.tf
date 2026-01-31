resource "airbyte_source_defillama" "my_source_defillama" {
  configuration = {
    # ...
  }
  definition_id = "09a8d930-17a8-4021-adff-73877af6e5b2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a9ebbd01-ade3-4aaf-b079-bb02c4fdf926"
}