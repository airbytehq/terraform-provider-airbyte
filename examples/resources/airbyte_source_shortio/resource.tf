resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "025a1545-86c7-4cdf-b558-f87809d3d1fc"
  name          = "Randy Price"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5511090e-c6c1-48f2-817e-88b7a8364f95"
}