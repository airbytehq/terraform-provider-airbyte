resource "airbyte_source_gorgias" "my_source_gorgias" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain_name           = "...my_domain_name..."
    password              = "...my_password..."
    start_date            = "2021-03-17T02:39:01.442Z"
    username              = "...my_username..."
  }
  definition_id = "b956d506-2b8b-4129-b92e-a8d074f22591"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1cd53348-a6a2-40e9-b659-09693a3422d6"
}