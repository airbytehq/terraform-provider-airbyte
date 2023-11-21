resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "d797c2fd-0239-4507-97b2-06b8fda8b48b"
  name          = "Dr. Jeffery Wuckert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "631ebcaf-aa2e-4e7a-9e0c-b6197095b91e"
}