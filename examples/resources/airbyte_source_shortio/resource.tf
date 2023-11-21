resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "b2aae6c2-0ac9-4c19-9b3e-1c883c55acce"
  name          = "Bethany Donnelly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "29a15c36-062a-463f-9716-d2b265f2af56"
}