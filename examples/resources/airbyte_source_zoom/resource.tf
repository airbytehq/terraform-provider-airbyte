resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    jwt_token = "...my_jwt_token..."
  }
  definition_id = "d6f5cf39-b34f-4958-9f42-198f32822b82"
  name          = "Gregory Hirthe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc2b7c1d-3540-4fbb-a2d8-a9d0010028d1"
}