resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "9d149f3b-04e3-42dc-a49b-6bc8e2c7d0de"
  name          = "Faith Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b57adde2-0e75-4111-bd06-12ffd3df1197"
}