resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "22262ef2-4d92-4369-b1ff-5a7ba288f10a"
  name          = "Kristen Dicki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f19f3886-85d8-4941-a7db-0723f94739cc"
}