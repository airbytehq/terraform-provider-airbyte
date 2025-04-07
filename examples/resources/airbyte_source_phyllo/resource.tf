resource "airbyte_source_phyllo" "my_source_phyllo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    environment   = "api.staging"
    start_date    = "2022-08-19T06:05:28.885Z"
  }
  definition_id = "ce69f143-df8e-405c-a91b-da99bc782802"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9d03026f-8697-417c-a2ea-f2c5af5179e6"
}