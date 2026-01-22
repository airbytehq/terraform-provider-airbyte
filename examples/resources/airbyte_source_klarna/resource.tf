resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "oc"
    username   = "...my_username..."
  }
  definition_id = "a9759e08-13e8-4127-b52e-0618d494138a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b84c79fe-c1a5-4acb-9d4f-bddafa75b9c1"
}