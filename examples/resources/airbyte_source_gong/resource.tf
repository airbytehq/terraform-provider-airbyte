resource "airbyte_source_gong" "my_source_gong" {
  configuration = {
    access_key        = "...my_access_key..."
    access_key_secret = "...my_access_key_secret..."
    start_date        = "2018-02-18T08:00:00Z"
  }
  definition_id = "0b702d4e-9a91-4582-b5bf-1ff51cd4b92d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "66fc102e-2c63-4350-beb2-94c7945f2740"
}