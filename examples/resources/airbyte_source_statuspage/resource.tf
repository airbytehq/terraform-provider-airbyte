resource "airbyte_source_statuspage" "my_source_statuspage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "f7745f4a-23d0-4636-81ff-f21f75467b3b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "26d6b1e0-4e68-4cd1-b51c-718e2c24825d"
}