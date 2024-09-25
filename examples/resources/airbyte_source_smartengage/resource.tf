resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6a568aa6-dc34-40bb-9546-957c12385870"
  name          = "Belinda Mills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "832c86da-d817-4ef7-9b41-7c7a0b7ebf79"
}