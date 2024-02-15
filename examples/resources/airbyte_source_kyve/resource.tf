resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 2
    page_size = 0
    pool_ids  = "0"
    start_ids = "0"
    url_base  = "https://api.korellia.kyve.network/"
  }
  definition_id = "77a566ac-796f-4dac-9f48-b8f86701054c"
  name          = "Miss Cristina Ratke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49a8fc7f-8e24-4672-a45c-fb2449eef876"
}