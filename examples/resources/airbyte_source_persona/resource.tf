resource "airbyte_source_persona" "my_source_persona" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "55934341-60cd-45ab-8d8b-59ca4eb3b2c2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "20224533-eaf4-4306-ad28-30ced5974893"
}