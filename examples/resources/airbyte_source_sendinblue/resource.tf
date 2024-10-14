resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "403205e5-d30b-43cf-8cbe-5973fb795bac"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "dd7935ae-8b5a-4a08-9b6e-acdf3ba41ffd"
}