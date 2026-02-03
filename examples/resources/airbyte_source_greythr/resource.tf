resource "airbyte_source_greythr" "my_source_greythr" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    base_url              = "...my_base_url..."
    domain                = "...my_domain..."
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "4143d169-b0b2-420a-9b61-e7168ba1e301"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7f65e904-170f-40c2-ab5b-c04214652b27"
}