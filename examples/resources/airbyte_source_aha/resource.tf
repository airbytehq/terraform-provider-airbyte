resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "638bd648-d548-414a-beb9-3d4bbde9f2bb"
  name          = "Kenneth Russel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fe4ad282-938c-4452-b564-4517930ed8d4"
}