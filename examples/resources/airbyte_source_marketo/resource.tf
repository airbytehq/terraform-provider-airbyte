resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "ec1a2bc2-b81e-445e-bceb-6c910dc95a96"
  name          = "Marco Hermann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc4b3253-e6bd-4591-a254-44d2234fd1d8"
}