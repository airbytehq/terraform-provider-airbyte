resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "d908d9d0-0175-4338-8297-3372c40ec929"
  name          = "Rita Hand"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9549bcc3-4d38-49bb-b5d2-4f5b1164e1dc"
}