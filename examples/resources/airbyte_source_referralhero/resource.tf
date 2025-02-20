resource "airbyte_source_referralhero" "my_source_referralhero" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "0c13de49-dfbe-4370-957b-7a2d4ac09109"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "db559305-d65a-4b07-8dc9-3353ca392ed8"
}