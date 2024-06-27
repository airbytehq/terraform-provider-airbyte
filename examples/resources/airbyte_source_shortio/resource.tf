resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "687b3371-0669-486a-bb02-fd25c7727b36"
  name          = "Yvonne Glover"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d3e7f0b-c649-4fe5-b08c-82dc40ca1ab7"
}