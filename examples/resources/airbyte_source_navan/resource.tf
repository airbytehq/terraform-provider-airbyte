resource "airbyte_source_navan" "my_source_navan" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2022-05-08T07:15:04.253Z"
  }
  definition_id = "9cdab109-8538-4dfc-8114-beaaed281ea3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac2fc351-208b-4aea-9bbd-6146ffcd8c15"
}