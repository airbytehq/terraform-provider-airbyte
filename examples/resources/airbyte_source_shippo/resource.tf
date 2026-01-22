resource "airbyte_source_shippo" "my_source_shippo" {
  configuration = {
    shippo_token = "...my_shippo_token..."
    start_date   = "2021-04-22T23:06:58.946Z"
  }
  definition_id = "76aaf9ec-4e2d-40b0-b7f1-89c4e02359f8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "340c4b83-710b-4d5d-a08f-9a440379312d"
}