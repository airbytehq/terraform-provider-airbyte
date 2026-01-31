resource "airbyte_source_uptick" "my_source_uptick" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    base_url              = "...my_base_url..."
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "5e5a841d-363e-4410-a3e4-9dca6100b8f9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3b471c57-c222-49c6-a73c-7c0020bb3154"
}