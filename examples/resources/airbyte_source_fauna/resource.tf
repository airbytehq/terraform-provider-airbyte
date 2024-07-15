resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 10
    }
    domain = "...my_domain..."
    port   = 5
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "02e3e601-6546-4635-ada9-b04e26c5d5cf"
  name          = "Elizabeth Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "713464ed-5bf6-4d67-b06c-c548e68cfaef"
}