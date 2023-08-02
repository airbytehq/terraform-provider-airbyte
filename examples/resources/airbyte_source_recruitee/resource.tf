resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key     = "...my_api_key..."
    company_id  = 3
    source_type = "recruitee"
  }
  name         = "Eloise Hintz"
  secret_id    = "...my_secretId..."
  workspace_id = "a45ac82b-85f8-4bc2-8aba-8da4127dd597"
}