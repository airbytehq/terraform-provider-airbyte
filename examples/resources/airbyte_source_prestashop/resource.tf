resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "ea52c707-cb05-4c4a-8d21-cf34658e520f"
  name          = "Maurice Gorczany"
  secret_id     = "...my_secret_id..."
  workspace_id  = "67309cc0-ee4b-4ba7-baed-572054daa84a"
}