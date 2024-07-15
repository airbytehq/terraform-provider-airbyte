resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = false
    start_date              = "2021-09-28"
  }
  definition_id = "6bf6f1cb-db35-4a96-8d0e-48f1e4b30469"
  name          = "Angel Sawayn DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "303cf017-cd97-4836-bf1b-e7e9b4aabfc5"
}