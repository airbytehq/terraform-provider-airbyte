resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "487876fc-ad61-45bc-ace6-87b337106698"
  name          = "Lee Kohler Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fd25c772-7b36-4354-a81d-3e7f0bc649fe"
}