resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "c0cc98dd-5412-4256-9139-361b0488926a"
  name          = "Marion Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e85afcc-9acc-46e7-a95c-9a7c9f197511"
}