resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain_id             = "...my_domain_id..."
    secret_key            = "...my_secret_key..."
    start_date            = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "4143d169-b0b2-420a-9b61-e7168ba1e301"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7f65e904-170f-40c2-ab5b-c04214652b27"
}