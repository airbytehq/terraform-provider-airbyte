resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "61382854-2bb3-47a4-98fa-cd1771a16fff"
  name          = "Mindy Beahan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eebc306c-4f33-497c-a047-5faadeba481e"
}