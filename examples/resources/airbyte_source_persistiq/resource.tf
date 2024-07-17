resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "46f2bce2-e77b-4bcc-af58-8ac548be8a7a"
  name          = "Wilfred Quitzon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c79293e-28aa-4819-8334-8b38fe3b5201"
}