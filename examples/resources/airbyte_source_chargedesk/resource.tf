resource "airbyte_source_chargedesk" "my_source_chargedesk" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    start_date            = 2
    username              = "...my_username..."
  }
  definition_id = "5b19adc8-7cc9-4582-909b-da4c3635bcf7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "72e1cba6-e614-4114-a01d-10c04d110961"
}