resource "airbyte_source_survicate" "my_source_survicate" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-10-30T10:23:23.725Z"
  }
  definition_id = "03e80205-4956-4e9a-ad9d-aedad833c055"
  name          = "Miss Salvador Hilpert IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bbc1e380-6100-4a18-b6f5-072b636f98b5"
}