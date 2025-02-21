resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "5ae84744-ccc5-47f9-8a98-d76302a36852"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7cafe10c-cd2c-48b6-9513-98d0b725b65b"
}