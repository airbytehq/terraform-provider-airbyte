resource "airbyte_source_teamwork" "my_source_teamwork" {
  configuration = {
    password   = "...my_password..."
    site_name  = "...my_site_name..."
    start_date = "2020-06-27T05:03:40.451Z"
    username   = "Ambrose_Will80"
  }
  definition_id = "c17260a5-ebd0-4cf4-b5b7-2f05c18a11c8"
  name          = "Pedro Cartwright V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2c7aa33-9899-4495-947b-12e2d4774d24"
}