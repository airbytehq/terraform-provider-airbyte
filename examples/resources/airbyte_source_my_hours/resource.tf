resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "%Y-%m-%d"
  }
  definition_id = "43ee79bd-13e2-4046-99bb-dc56c2f2e202"
  name          = "Lindsey Schinner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "13998d3f-c543-40ae-866d-4a91bbbc35ba"
}