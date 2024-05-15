resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "3950717b-206b-48fd-a8b4-8bf3f0e9631e"
  name          = "Myron O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2ee7a1e-0cb6-4197-895b-91e126100f09"
}