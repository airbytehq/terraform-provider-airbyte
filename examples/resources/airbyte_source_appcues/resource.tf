resource "airbyte_source_appcues" "my_source_appcues" {
  configuration = {
    account_id = "...my_account_id..."
    password   = "...my_password..."
    start_date = "2022-10-13T19:22:32.624Z"
    username   = "...my_username..."
  }
  definition_id = "fea44672-fa4f-455f-a885-5df047bc60ae"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b0c8cf4-c3c9-438c-8a6c-75a2b0d52f29"
}